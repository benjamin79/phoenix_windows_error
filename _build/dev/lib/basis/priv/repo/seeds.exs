# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Basis.Repo.insert!(%Basis.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Basis.Repo
alias Basis.Category
alias Basis.Salutation
alias Basis.Status

for salutation <- ~w(Frau Herr) do
  Repo.get_by(Salutation, name: salutation) ||
    Repo.insert!(%Salutation{name: salutation})
end

for status <- ~w(offen Versuch kontaktiert Chance bekannt geschlossen) do
  Repo.get_by(Status, name: status) ||
    Repo.insert!(%Status{name: status})
end

for category <- ~w(Lead qualifiziert Kunde disqualifiziert Partner Mitbewerber) do
  Repo.get_by(Category, name: category) ||
    Repo.insert!(%Category{name: category})
end
