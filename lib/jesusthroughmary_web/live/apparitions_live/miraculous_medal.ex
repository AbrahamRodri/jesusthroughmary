defmodule JesusthroughmaryWeb.ApparitionLive.MiraculousMedal do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of the Miraculous Medal</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/miraculous_medal.webp"
              alt="Our Lady of the Miraculous Medal"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Rue de Bac, Paris, France <br /> Date: July 18, 1830
              </p>
              <p class="text-gray-700 mb-4">
                Mary appeared to St. Catherine Labouré, revealing the design for the Miraculous Medal
                and emphasizing the graces it would bring to those who wear it with faith.
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of the Miraculous Medal</h2>
          <p class="text-gray-700 mb-4">
            Millions around the world wear the Miraculous Medal as a sign of faith and devotion to the
            Blessed Virgin Mary.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
