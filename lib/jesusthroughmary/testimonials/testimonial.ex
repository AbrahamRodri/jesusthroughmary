defmodule Jesusthroughmary.Testimonials.Testimonial do
  use Ecto.Schema
  import Ecto.Changeset

  schema "testimonials" do
    field :title, :string
    field :message, :string
    field :likes, :integer, default: 0

    field :date, :naive_datetime,
      default: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second)

    belongs_to :user, Jesusthroughmary.Accounts.User

    has_many :comments, Jesusthroughmary.Comments.Comment

    timestamps()
  end

  @doc false
  def changeset(testimonial, attrs) do
    testimonial
    |> cast(attrs, [:title, :message, :likes, :date, :user_id])
    |> validate_required([:title, :message, :user_id])
  end
end
