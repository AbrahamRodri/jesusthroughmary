defmodule Jesusthroughmary.Repo.Migrations.CreateTestimonials do
  use Ecto.Migration

  def change do
    create table(:testimonials) do
      add :title, :string
      add :message, :text
      add :likes, :integer
      add :date, :naive_datetime

      timestamps(type: :utc_datetime)
    end
  end
end
