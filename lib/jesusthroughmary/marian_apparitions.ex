defmodule Jesusthroughmary.MarianApparitions do
  @apparitions [
    %{
      id: "guadalupe",
      title: "Our Lady of Guadalupe",
      date: ~D[1531-12-09],
      location: "Mexico City, Mexico",
      description: "Our Lady appeared to Saint Juan Diego and left her image on his tilma.",
      image_url: "/images/guadalupe.webp"
    },
    %{
      id: "laus",
      title: "Our Lady of Laus",
      date: ~D[1664-05-01],
      location: "Laus, France",
      description:
        "Mary appeared to shepherdess Benoîte Rencurel, calling for the conversion of sinners.",
      image_url: "/images/laus.webp"
    },
    %{
      id: "miraculous_medal",
      title: "Our Lady of the Miraculous Medal",
      date: ~D[1830-07-18],
      location: "Rue de Bac, Paris, France",
      description:
        "Mary appeared to St. Catherine Labouré, revealing the design for the Miraculous Medal.",
      image_url: "/images/miraculous_medal.webp"
    },
    %{
      id: "la_salette",
      title: "Our Lady of La Salette",
      date: ~D[1846-09-19],
      location: "La Salette, France",
      description: "Mary appeared to two children, calling for repentance and conversion.",
      image_url: "/images/la_salette.webp"
    },
    %{
      id: "lourdes",
      title: "Our Lady of Lourdes",
      date: ~D[1858-02-11],
      location: "Lourdes, France",
      description: "Mary appeared to St. Bernadette Soubirous, calling for prayer and penance.",
      image_url: "/images/lourdes.webp"
    },
    %{
      id: "hope",
      title: "Our Lady of Hope of Pontmain",
      date: ~D[1871-01-17],
      location: "Pontmain, France",
      description:
        "Mary appeared during the Franco-Prussian War, bringing hope to the people of Pontmain.",
      image_url: "/images/hope.webp"
    },
    %{
      id: "knock",
      title: "Our Lady of Knock",
      date: ~D[1879-08-21],
      location: "Knock, Ireland",
      description: "Mary appeared with St. Joseph, St. John the Evangelist, and the Lamb of God.",
      image_url: "/images/knock.webp"
    },
    %{
      id: "fatima",
      title: "Our Lady of Fatima",
      date: ~D[1917-05-13],
      location: "Fatima, Portugal",
      description: "Mary appeared to three children, sharing messages of prayer and conversion.",
      image_url: "/images/fatima.webp"
    },
    %{
      id: "beauraing",
      title: "Our Lady of Beauraing",
      date: ~D[1932-11-29],
      location: "Beauraing, Belgium",
      description: "Mary appeared to five children, calling for prayer and conversion.",
      image_url: "/images/beauraing.webp"
    },
    %{
      id: "banneux",
      title: "Our Lady of Banneux",
      date: ~D[1933-01-15],
      location: "Banneux, Belgium",
      description:
        "Mary appeared to Mariette Beco, identifying herself as 'The Virgin of the Poor.'",
      image_url: "/images/banneux.webp"
    }
  ]

  def all, do: @apparitions
end
