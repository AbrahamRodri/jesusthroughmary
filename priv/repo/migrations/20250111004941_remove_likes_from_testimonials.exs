defmodule Jesusthroughmary.Repo.Migrations.RemoveLikesFromTestimonials do
  use Ecto.Migration

  def change do
    alter table(:testimonials) do
      remove :likes
    end
  end
end
