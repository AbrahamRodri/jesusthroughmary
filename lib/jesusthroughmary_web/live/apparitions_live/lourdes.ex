defmodule JesusthroughmaryWeb.ApparitionLive.Lourdes do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of Lourdes</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/lourdes.webp"
              alt="Our Lady of Lourdes"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Lourdes, France <br /> Date: February 11, 1858
              </p>
              <p class="text-gray-700 mb-4">
                Mary appeared to St. Bernadette Soubirous, calling for prayer, penance, and devotion.
                She identified herself as the Immaculate Conception and left behind a miraculous spring of healing waters.
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of Lourdes</h2>
          <p class="text-gray-700 mb-4">
            Lourdes remains one of the world's most famous pilgrimage sites, known for physical and spiritual healing through its waters.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
