defmodule Jesusthroughmary.MarianApparitions do
  @apparitions [
    %{
      id: "fatima",
      title: "Our Lady of Fatima",
      date: ~D[1917-05-13],
      location: "Fatima, Portugal",
      description: "A series of Marian apparitions that occurred in Fatima in 1917.",
      image_url: "/images/fatima.jpg"
    },
    %{
      id: "lourdes",
      title: "Our Lady of Lourdes",
      date: ~D[1858-02-11],
      location: "Lourdes, France",
      description: "The Virgin Mary appeared to Saint Bernadette Soubirous in Lourdes.",
      image_url: "/images/lourdes.jpg"
    },
    %{
      id: "guadalupe",
      title: "Our Lady of Guadalupe",
      date: ~D[1531-12-09],
      location: "Mexico City, Mexico",
      description: "The Virgin Mary appeared to Saint Juan Diego in 1531.",
      image_url: "/images/guadalupe.jpg"
    }
  ]

  def all, do: @apparitions
end
