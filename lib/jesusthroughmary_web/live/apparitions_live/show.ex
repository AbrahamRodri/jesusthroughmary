defmodule JesusthroughmaryWeb.ApparitionLive.Show do
  use JesusthroughmaryWeb, :live_view
  alias Jesusthroughmary.MarianApparitions

  def mount(%{"id" => id}, _session, socket) do
    case Enum.find(MarianApparitions.all(), &(&1.id == id)) do
      nil ->
        {:ok,
         socket
         |> put_flash(:error, "Apparition not found")
         |> redirect(to: ~p"/apparitions")}

      apparition ->
        {:ok, assign(socket, :apparition, apparition)}
    end
  end
end
