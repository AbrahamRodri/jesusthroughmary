defmodule Jesusthroughmary.Repo.Migrations.AddLikesBack do
  use Ecto.Migration

  def change do
    alter table(:testimonials) do
      add :likes, :integer, default: 0
    end
  end
end
