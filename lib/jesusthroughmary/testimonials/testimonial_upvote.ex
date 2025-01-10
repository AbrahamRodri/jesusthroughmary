defmodule Jesusthroughmary.Testimonials.TestimonialUpvote do
  use Ecto.Schema
  import Ecto.Changeset

  schema "testimonial_upvotes" do
    belongs_to :user, Jesusthroughmary.Accounts.User
    belongs_to :testimonial, Jesusthroughmary.Testimonials.Testimonial

    timestamps()
  end

  @doc false
  def changeset(testimonial_upvote, attrs) do
    testimonial_upvote
    |> cast(attrs, [:user_id, :testimonial_id])
    |> validate_required([:user_id, :testimonial_id])
    |> unique_constraint(:user_id, name: :unique_user_testimonial_upvote)
  end
end
