defmodule ElixirJobs.Router do
  use Phoenix.Router

  

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", ElixirJobs do
    pipe_through :browser # Use the default browser stack
    get "/", HomeController, :index, as: :index
    resources "jobs", PageController

    # get "/", PageController, :index, as: :index
    # get "/new", PageController, :new, as: :new
    # post "/new", PageController, :save, as: :save
    # get "/job/:id", PageController, :job, as: :job
    # get "/job/:id/edit", PageController, :edit, as: :edit
    # post "/job/:id", PageController, :update, as: :update
    # get "/job/:id/:action", PageController, :job, as: :delete
    # post "/job/:id/delete", PageController, :destroy, as: :destroy
  
  end

  # Other scopes may use custom stacks.
  # scope "/api", ElixirJobs do
  #   pipe_through :api
  # end
end
