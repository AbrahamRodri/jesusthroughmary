defmodule Jesusthroughmary.Repo.Migrations.CreateTestimonialUpVoteTables do
  use Ecto.Migration

  def change do
    create table(:testimonial_upvote) do
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :testimonial_id, references(:testimonials, on_delete: :delete_all), null: false

      timestamps()
    end

    create unique_index(:testimonial_upvote, [:user_id, :testimonial_id])
  end
end
