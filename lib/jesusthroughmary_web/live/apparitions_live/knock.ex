defmodule JesusthroughmaryWeb.ApparitionLive.Knock do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of Knock</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/knock.webp"
              alt="Our Lady of Knock"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Knock, Ireland <br /> Date: August 21, 1879
              </p>
              <p class="text-gray-700 mb-4">
                Mary appeared with St. Joseph, St. John the Evangelist, and the Lamb of God, in a silent apparition witnessed by villagers.
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of Knock</h2>
          <p class="text-gray-700 mb-4">
            The Shrine of Knock is a place of profound prayer and healing, visited by pilgrims from all over the world.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
