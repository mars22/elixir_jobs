defmodule ElixirJobs.Queries do
  alias ElixirJobs.Repo
  alias ElixirJobs.Jobs
  import Ecto.Query
  

  def jobs_query do
    query = from job in Jobs, 
    		order_by: [desc: job.id],
    		select: job

    Repo.all(query)
  end

  def job_detail_query(id) do
  	query = from job in Jobs,
  			where: job.id == ^id
  			
  	
  	Repo.all(query) |> List.first
  end

end
