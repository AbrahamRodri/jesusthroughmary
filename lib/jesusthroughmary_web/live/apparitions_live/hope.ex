defmodule JesusthroughmaryWeb.ApparitionLive.Hope do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of Hope of Pontmain</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/hope.webp"
              alt="Our Lady of Hope of Pontmain"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Pontmain, France <br /> Date: January 17, 1871
              </p>
              <p class="text-gray-700 mb-4">
                Mary appeared during the Franco-Prussian War, offering a message of hope and trust in God's protection.
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of Pontmain</h2>
          <p class="text-gray-700 mb-4">
            This apparition inspires trust in Mary's intercession during times of distress and war.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
