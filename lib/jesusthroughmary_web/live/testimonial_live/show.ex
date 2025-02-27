defmodule JesusthroughmaryWeb.TestimonialLive.Show do
  use JesusthroughmaryWeb, :live_view

  alias Jesusthroughmary.Testimonials

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:testimonial, Testimonials.get_testimonial!(id))
     |> assign(:likes, Testimonials.count_upvotes(id))}
  end

  @impl true
  def handle_event("upvote", %{"id" => testimonial_id}, socket) do
    user_id = socket.assigns.current_user.id

    case Testimonials.upvote_testimonial(%{
           user_id: user_id,
           testimonial_id: String.to_integer(testimonial_id)
         }) do
      {:ok, _upvote} ->
        # Fetch updated upvotes count and testimonial data
        updated_testimonial = Testimonials.get_testimonial!(testimonial_id)
        updated_likes = Testimonials.count_upvotes(testimonial_id)

        # Reassign the updated testimonial and likes count
        {:noreply,
         socket
         |> assign(:testimonial, updated_testimonial)
         |> assign(:likes, updated_likes)}

      {:error, _changeset} ->
        {:noreply, socket |> put_flash(:error, "Unable to upvote.")}
    end
  end

  defp page_title(:show), do: "Show Testimonial"
  defp page_title(:edit), do: "Edit Testimonial"
end
