defmodule JesusthroughmaryWeb.TestimonialLive.Index do
  use JesusthroughmaryWeb, :live_view

  alias Jesusthroughmary.Testimonials
  alias Jesusthroughmary.Testimonials.Testimonial

  on_mount {JesusthroughmaryWeb.UserAuth, :ensure_authenticated}

  @impl true
  def mount(_params, _session, socket) do
    # Assign the list of testimonials on mount
    {:ok, assign(socket, :testimonials, Testimonials.list_testimonials())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Testimonial")
    |> assign(:testimonial, Testimonials.get_testimonial!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Testimonial")
    |> assign(:testimonial, %Testimonial{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Testimonials")
    |> assign(:testimonial, nil)
  end

  @impl true
  def handle_info(
        {JesusthroughmaryWeb.TestimonialLive.FormComponent, {:saved, testimonial}},
        socket
      ) do
    # Add the new testimonial to the current list of testimonials
    updated_testimonials = [testimonial | socket.assigns.testimonials]
    {:noreply, assign(socket, :testimonials, updated_testimonials)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    testimonial = Testimonials.get_testimonial!(id)

    # Delete the testimonial and update the list of testimonials
    case Testimonials.delete_testimonial(testimonial) do
      {:ok, _} ->
        updated_testimonials = Testimonials.list_testimonials()

        {:noreply, assign(socket, :testimonials, updated_testimonials)}

      {:error, _reason} ->
        {:noreply, socket |> put_flash(:error, "Unable to delete testimonial.")}
    end
  end
end
