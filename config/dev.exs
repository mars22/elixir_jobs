use Mix.Config

config :elixir_jobs, ElixirJobs.Endpoint,
  http: [port: System.get_env("PORT") || 4000],
  debug_errors: true

# Enables code reloading for development
config :elixir_jobs, :code_reloader, true
