use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :planner, Planner.Endpoint,
  secret_key_base: "w+nojo19ht0pqARx72C+SJhvU/d2MthumjsaWZbN7cDkRKthGgdZPghf/eZcz1vW"

# Configure your database
config :planner, Planner.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "planner_prod"
