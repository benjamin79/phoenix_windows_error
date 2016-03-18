ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Basis.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Basis.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Basis.Repo)

