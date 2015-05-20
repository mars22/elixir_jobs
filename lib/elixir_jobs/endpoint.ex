defmodule ElixirJobs.Endpoint do
  use Phoenix.Endpoint, otp_app: :elixir_jobs

  

  plug Plug.Static,
    at: "/", from: :elixir_jobs

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_elixir_jobs_key",
    signing_salt: "qh4TVGhm",
    encryption_salt: "whY7fPBB"

  plug :router, ElixirJobs.Router
end