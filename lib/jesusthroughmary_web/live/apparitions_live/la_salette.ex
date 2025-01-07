defmodule JesusthroughmaryWeb.ApparitionLive.LaSalette do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of La Salette</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/la_salette.webp"
              alt="Our Lady of La Salette"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: La Salette, France <br /> Date: September 19, 1846
              </p>
              <p class="text-gray-700 mb-4">
                Mary appeared to two children, urging repentance and conversion. Her message
                emphasized prayer, especially for sinners.
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of La Salette</h2>
          <p class="text-gray-700 mb-4">
            The apparition continues to inspire conversions and renew faith in God's mercy and love.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
