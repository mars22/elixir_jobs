defmodule ElixirJobs.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    # The scheme can be anything, "ecto" is just an example
    parse_url "ecto://marcin@localhost/elixir_jobs"
  end

  def priv do
    app_dir(:elixir_jobs, "priv/repo")
  end
end
