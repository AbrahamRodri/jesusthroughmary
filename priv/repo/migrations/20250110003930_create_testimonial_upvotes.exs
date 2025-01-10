defmodule Jesusthroughmary.Repo.Migrations.CreateTestimonialUpvotes do
  use Ecto.Migration

  def change do
    create table(:testimonial_upvotes) do
      add :user_id, references(:users, on_delete: :nothing)
      add :testimonial_id, references(:testimonials, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:testimonial_upvotes, [:user_id])
    create index(:testimonial_upvotes, [:testimonial_id])
  end
end
