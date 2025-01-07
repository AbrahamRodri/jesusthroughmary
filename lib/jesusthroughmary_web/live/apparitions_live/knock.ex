defmodule JesusthroughmaryWeb.ApparitionLive.Knock do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="max-w-4xl mx-auto py-8 px-4">
      <h1 class="text-3xl font-bold mb-8">Our Lady of Fatima</h1>

      <div class="grid gap-6">
        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <div class="flex items-start gap-4">
            <img
              src="/images/fatima.webp"
              alt="Our Lady of Fatima"
              class="w-48 h-48 object-cover rounded"
            />
            <div>
              <h2 class="text-xl font-semibold mb-4">Apparition Details</h2>
              <p class="text-gray-600 mb-4">
                Location: Fatima, Portugal <br /> Date: May 13, 1917
              </p>
              <p class="text-gray-700 mb-4">
                Our Lady of Fatima is one of the most well-known Marian apparitions. In 1917, the
                Virgin Mary appeared to three shepherd children in Fatima, Portugal. Over a series
                of apparitions, she shared messages calling for prayer, penance, and devotion.
              </p>
              <p class="text-gray-700 mb-4">
                The apparition culminated with the Miracle of the Sun, witnessed by tens of
                thousands of people, which affirmed the authenticity of the messages and left a
                lasting impact on the Catholic Church.
              </p>
            </div>
          </div>
        </div>

        <div class="block p-6 bg-white rounded-lg shadow hover:shadow-md transition-shadow">
          <h2 class="text-xl font-semibold mb-4">The Legacy of Fatima</h2>
          <p class="text-gray-700 mb-4">
            The message of Fatima continues to inspire millions around the world, reminding us of
            the importance of prayer, conversion, and trusting in God's divine plan. The site of
            the apparition is now a major pilgrimage destination, attracting visitors from all
            over the globe.
          </p>
          <p class="text-gray-700">
            Join us in reflecting on the message of Fatima and seeking intercession through the
            Blessed Virgin Mary.
          </p>
        </div>
      </div>
    </div>
    """
  end
end
