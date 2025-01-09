defmodule JesusthroughmaryWeb.TestimonialLive.FormComponent do
  use JesusthroughmaryWeb, :live_component

  alias Jesusthroughmary.Testimonials

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        {@title}
        <:subtitle>Use this form to manage testimonial records in your database.</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="testimonial-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input field={@form[:title]} type="text" label="Title" />
        <.input field={@form[:message]} type="text" label="Message" />
        <:actions>
          <.button phx-disable-with="Saving...">Save Testimonial</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{testimonial: testimonial} = assigns, socket) do
    {:ok,
     socket
     |> assign(assigns)
     |> assign_new(:form, fn ->
       to_form(Testimonials.change_testimonial(testimonial))
     end)}
  end

  @impl true
  def handle_event("validate", %{"testimonial" => testimonial_params}, socket) do
    changeset = Testimonials.change_testimonial(socket.assigns.testimonial, testimonial_params)
    {:noreply, assign(socket, form: to_form(changeset, action: :validate))}
  end

  def handle_event("save", %{"testimonial" => testimonial_params}, socket) do
    save_testimonial(socket, socket.assigns.action, testimonial_params)
  end

  defp save_testimonial(socket, :edit, testimonial_params) do
    case Testimonials.update_testimonial(socket.assigns.testimonial, testimonial_params) do
      {:ok, testimonial} ->
        notify_parent({:saved, testimonial})

        {:noreply,
         socket
         |> put_flash(:info, "Testimonial updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp save_testimonial(socket, :new, testimonial_params) do
    inspect(socket.assigns.current_user.id)

    case Testimonials.create_testimonial(testimonial_params, socket.assigns.current_user.id) do
      {:ok, testimonial} ->
        notify_parent({:saved, testimonial})

        {:noreply,
         socket
         |> put_flash(:info, "Testimonial created successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end
