defmodule Basis.Repo.Migrations.CreateSalutaion do
  use Ecto.Migration

  def change do
    create table(:salutation) do
      add :name, :string

      timestamps
    end

  end
end
