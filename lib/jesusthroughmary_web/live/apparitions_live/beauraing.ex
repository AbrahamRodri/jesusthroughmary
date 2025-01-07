defmodule JesusthroughmaryWeb.ApparitionLive.Beauraing do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of Beauraing</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/beauraing.webp"
              alt="Our Lady of Beauraing"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Beauraing, Belgium <br /> Date: November 29, 1932
              </p>
              <p class="text-gray-700 mb-4">
                Mary appeared to five children, urging prayer and conversion. She revealed herself as the "Immaculate Virgin" and "Mother of God, Queen of Heaven."
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of Beauraing</h2>
          <p class="text-gray-700 mb-4">
            The apparition continues to inspire devotion to Mary and encourages us to trust in her guidance.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
