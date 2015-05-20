# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :elixir_jobs, ElixirJobs.Endpoint,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "K9X9rQQIK1z+/pa5MNOd9kS6xO4GIqjEyZAsKiugVI9GrfoL9TikRlzEGloOslwvLU+2VxoSM1tx1sb7JHxMvg==",
  debug_errors: false,
  error_controller: ElixirJobs.PageController

# Session configuration
config :elixir_jobs, ElixirJobs.Endpoint,
  session: [store: :cookie,
            key: "_elixir_jobs_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
