defmodule JesusthroughmaryWeb.ApparitionLive.Laus do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of Laus</h1>
      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/laus.webp"
              alt="Our Lady of Laus"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Laus, France <br /> Date: May 1, 1664
              </p>
              <p class="text-gray-700 mb-4">
                Mary appeared to shepherdess Benoîte Rencurel, calling for the conversion of sinners
                and emphasizing prayer and repentance.
              </p>
            </div>
          </div>
        </div>
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of Laus</h2>
          <p class="text-gray-700 mb-4">
            The Sanctuary of Our Lady of Laus continues to draw pilgrims, offering grace, healing, and
            renewal in Christ through Mary's intercession.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
