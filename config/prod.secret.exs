use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :basis, Basis.Endpoint,
  secret_key_base: "LB8DT85SqLKHFN4QkhSm/QZj0DBSqIA/RwO4xJqU8DaCZNHBhraLWwMx2rrfTfae"

# Configure your database
config :basis, Basis.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "basis_prod",
  pool_size: 20
