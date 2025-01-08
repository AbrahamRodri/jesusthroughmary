defmodule Jesusthroughmary.TestimonialsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Jesusthroughmary.Testimonials` context.
  """

  @doc """
  Generate a testimonial.
  """
  def testimonial_fixture(attrs \\ %{}) do
    {:ok, testimonial} =
      attrs
      |> Enum.into(%{
        date: ~N[2025-01-07 02:43:00],
        likes: 42,
        message: "some message",
        title: "some title"
      })
      |> Jesusthroughmary.Testimonials.create_testimonial()

    testimonial
  end
end
