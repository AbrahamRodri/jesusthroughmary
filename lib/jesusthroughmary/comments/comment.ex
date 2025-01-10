defmodule Jesusthroughmary.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :content, :string

    field :date, :naive_datetime,
      default: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second)

    belongs_to :user, Jesusthroughmary.Accounts.User
    belongs_to :testimonial, Jesusthroughmary.Testimonials.Testimonial

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:content, :date])
    |> validate_required([:content, :date])
  end
end
