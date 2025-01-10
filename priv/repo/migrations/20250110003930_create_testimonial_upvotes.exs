defmodule Jesusthroughmary.Repo.Migrations.CreateTestimonialUpvotes do
  use Ecto.Migration

  def change do
    create table(:testimonial_upvotes) do
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :testimonial_id, references(:testimonials, on_delete: :delete_all), null: false

      timestamps(type: :utc_datetime)
    end

    create unique_index(:testimonial_upvotes, [:user_id, :testimonial_id],
             name: :unique_user_testimonial_upvote
           )
  end
end
