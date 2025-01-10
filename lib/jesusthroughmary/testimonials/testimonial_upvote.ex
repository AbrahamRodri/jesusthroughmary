defmodule Jesusthroughmary.Testimonials.TestimonialUpvote do
  use Ecto.Schema
  import Ecto.Changeset

  schema "testimonial_upvotes" do

    field :user_id, :id
    field :testimonial_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(testimonial_upvote, attrs) do
    testimonial_upvote
    |> cast(attrs, [])
    |> validate_required([])
  end
end
