defmodule JesusthroughmaryWeb.ApparitionLive.Banneux do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of Banneux</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/banneux.webp"
              alt="Our Lady of Banneux"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Banneux, Belgium <br /> Date: January 15, 1933
              </p>
              <p class="text-gray-700 mb-4">
                Mary appeared to Mariette Beco, identifying herself as the "Virgin of the Poor" and bringing a message of hope for the suffering and the sick.
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of Banneux</h2>
          <p class="text-gray-700 mb-4">
            The Shrine of Our Lady of Banneux remains a place of prayer and healing, especially for those who suffer.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
