defmodule JesusthroughmaryWeb.RosaryLive.Home do
  use JesusthroughmaryWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="">
      <section class="text-center mb-12">
        <div class="hero-image flex flex-col items-center justify-center">
          <h1 class="text-white">The Holy Rosary</h1>
        </div>
      </section>

      <section class="section-body mb-12 bg-yellow-50 mb-12 p-6 rounded-lg shadow-md">
        <!-- Section 1: Introduction -->
        <div class="">
          <h2 class="">What is the Rosary?</h2>
          <p class="">
            The Rosary is a sacred prayer in the Catholic Church, given to us by the Blessed Virgin Mary.
            It is a meditative devotion that guides us through the mysteries of Christ's life, death, and resurrection.
          </p>
          <p class="">
            The word "Rosary" means "crown of roses." When you pray the Rosary, you offer a spiritual bouquet of love and devotion to Our Blessed Mother, who intercedes for us before God.
          </p>
        </div>
        
    <!-- Section 2: Structure of the Rosary -->
        <div class="">
          <h2 class="">Structure of the Rosary</h2>
          <p class="">
            The Rosary is composed of five decades, each focusing on a specific mystery of Christ's life. A complete Rosary consists of 20 decades, divided into four sets of mysteries:
          </p>
          <ul class="list-disc list-inside mb-4">
            <li><strong>Joyful Mysteries</strong>: The Annunciation, the Visitation, and more.</li>
            <li>
              <strong>Sorrowful Mysteries</strong>: The Agony in the Garden, the Crucifixion, and others.
            </li>
            <li>
              <strong>Glorious Mysteries</strong>: The Resurrection, the Coronation of Mary, and more.
            </li>
            <li>
              <strong>Luminous Mysteries</strong>: The Baptism of Jesus, the Wedding at Cana, and others.
            </li>
          </ul>
        </div>
        
    <!-- Section 3: How to Pray the Rosary -->
        <div class="">
          <h2 class="">How to Pray the Rosary</h2>
          <p class="">
            To begin, make the Sign of the Cross and recite the Apostles' Creed. This is followed by an Our Father, three Hail Marys for faith, hope, and charity, and a Glory Be. Then proceed to the decades:
          </p>
          <ul class="list-disc list-inside mb-4">
            <li>Announce the mystery and meditate on it while praying one Our Father.</li>
            <li>Pray ten Hail Marys while continuing your meditation.</li>
            <li>Conclude with a Glory Be and, optionally, the Fatima Prayer.</li>
          </ul>
          <p class="text-gray-700">
            The Rosary ends with the Hail Holy Queen and a closing prayer. Through these prayers, we reflect on Christ’s life and grow closer to God through Mary’s intercession.
          </p>
        </div>
        
    <!-- Section 4: Subtopics to Explore -->
        <div class="">
          <h2 class="">Explore More</h2>
          <p class="">
            Deepen your devotion and understanding of the Rosary with these topics:
          </p>
          <ul class="list-disc list-inside mb-4">
            <li>
              <a href="/how-to-meditate.html" class="text-blue-500 hover:underline">
                How to Meditate with the Rosary
              </a>
            </li>
            <li>
              <a href="/rosary-mysteries.html" class="text-blue-500 hover:underline">
                The Mysteries of the Rosary
              </a>
            </li>
            <li>
              <a href="/rosary-of-sorrows.html" class="text-blue-500 hover:underline">
                The Rosary of Sorrows
              </a>
            </li>
            <li>
              <a href="/divine-mercy-chaplet.html" class="text-blue-500 hover:underline">
                The Divine Mercy Chaplet
              </a>
            </li>
            <li>
              <a href="/types-of-rosaries.html" class="text-blue-500 hover:underline">
                Types of Rosary Prayers
              </a>
            </li>
          </ul>
          <p class="text-gray-700">
            Each page provides rich insights into the beauty of the Rosary and its role in the life of a Catholic.
          </p>
        </div>
        
    <!-- Section 5: Benefits of the Rosary -->
        <div class="">
          <h2 class="">Benefits of Praying the Rosary</h2>
          <p class="">
            The Rosary brings many spiritual benefits, including peace of mind, greater focus in prayer, and a stronger connection to Christ through Mary. It is also a powerful tool for spiritual warfare, offering protection and grace.
          </p>
          <p class="text-gray-700">
            By praying the Rosary daily, we grow in holiness and fulfill Mary's request at Fatima: "Pray the Rosary every day."
          </p>
        </div>
      </section>
    </div>
    """
  end
end
