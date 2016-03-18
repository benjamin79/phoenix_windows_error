defmodule Basis.SalutationTest do
  use Basis.ModelCase

  alias Basis.Salutation

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Salutation.changeset(%Salutation{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Salutation.changeset(%Salutation{}, @invalid_attrs)
    refute changeset.valid?
  end
end
