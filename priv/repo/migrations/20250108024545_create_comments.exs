defmodule Jesusthroughmary.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :text
      add :date, :naive_datetime
      add :testimonial_id, references(:testimonials, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:comments, [:testimonial_id])
    create index(:comments, [:user_id])
  end
end
