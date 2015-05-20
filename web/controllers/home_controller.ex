defmodule ElixirJobs.HomeController do
	use Phoenix.Controller
  	alias ElixirJobs.Router
  	

	plug :action

  def index(conn, _params) do
    jobs = ElixirJobs.Queries.jobs_query
    render(conn, "index.html", jobs: jobs)
  end


end