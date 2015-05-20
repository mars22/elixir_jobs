defmodule ElixirJobs.PageController do
  use Phoenix.Controller
  alias ElixirJobs.Router
  require Logger


  plug :action

  def index(conn, _params) do
    jobs = ElixirJobs.Queries.jobs_query
    render(conn, "index.html", jobs: jobs)
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def create(conn, params) do
  	job = %ElixirJobs.Jobs{title: params["title"], description: params["description"],job_type: params["job_type"],job_status: params["job_status"]}
  	ElixirJobs.Repo.insert(job)
  	redirect(conn, to: Router.Helpers.page_path(:index))
  end


  

  

  def show(conn, params) do
  	job = ElixirJobs.Queries.job_detail_query(String.to_integer(params["id"]))
  	render(conn,"job.html",job: job,action: params["action"])
  end

  def edit(conn, %{"id" => id}) do
  	job = ElixirJobs.Queries.job_detail_query(String.to_integer(id))
  	render(conn,"edit.html",job: job)
  end

  def update(conn, params) do
    
    job = ElixirJobs.Repo.get(ElixirJobs.Jobs, String.to_integer(params["id"]))
    job = %{job | title: params["title"], description: params["description"],
      job_type: params["job_type"], job_status: params["job_status"]}
    
    ElixirJobs.Repo.update(job)
    
    redirect(conn, to: Router.Helpers.page_path(:index))
  end


  def destroy(conn, params) do
    job = ElixirJobs.Repo.get(ElixirJobs.Jobs, String.to_integer(params["id"]))
    ElixirJobs.Repo.delete(job)

    redirect conn, to: Router.Helpers.page_path(:index)
  end

end
