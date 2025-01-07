defmodule JesusthroughmaryWeb.ApparitionLive.Guadalupe do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of Guadalupe</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/guadalupe.webp"
              alt="Our Lady of Guadalupe"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Mexico City, Mexico <br /> Date: December 9, 1531
              </p>
              <p class="text-gray-700 mb-4">
                Our Lady appeared to Saint Juan Diego and left her image on his tilma. This apparition
                has inspired millions and is a powerful symbol of faith and unity in the Americas.
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of Guadalupe</h2>
          <p class="text-gray-700 mb-4">
            The Basilica of Our Lady of Guadalupe is one of the most visited Catholic pilgrimage
            destinations in the world, reminding us of Mary's maternal love and intercession.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
