# lib/jesusthroughmary_web/live/apparition_live/index.ex
defmodule JesusthroughmaryWeb.ApparitionLive.Index do
  use JesusthroughmaryWeb, :live_view
  alias Jesusthroughmary.MarianApparitions

  def mount(_params, _session, socket) do
    apparitions =
      MarianApparitions.all()
      |> Enum.sort_by(& &1.title)

    socket =
      assign(socket,
        apparitions: apparitions,
        search_query: "",
        filtered_apparitions: apparitions
      )

    {:ok, socket}
  end

  def handle_event("search", %{"query" => query}, socket) do
    filtered_apparitions =
      MarianApparitions.all()
      |> Enum.sort_by(& &1.title)
      |> Enum.filter(&apparition_matches?(&1, query))

    {:noreply, assign(socket, search_query: query, filtered_apparitions: filtered_apparitions)}
  end

  defp apparition_matches?(apparition, query) do
    query = String.downcase(query)

    String.contains?(String.downcase(apparition.title), query) ||
      String.contains?(String.downcase(apparition.location), query) ||
      String.contains?(String.downcase(apparition.description), query)
  end
end
