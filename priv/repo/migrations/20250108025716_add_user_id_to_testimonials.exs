defmodule Jesusthroughmary.Repo.Migrations.AddUserIdToTestimonials do
  use Ecto.Migration

  def change do
    alter table(:testimonials) do
      add :user_id, references(:users, on_delete: :nilify_all), null: false
    end
  end
end
