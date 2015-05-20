use Mix.Config

config :elixir_jobs, ElixirJobs.Endpoint,
  http: [port: System.get_env("PORT") || 4001],
