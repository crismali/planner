defmodule Planner.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Planner do
    pipe_through :browser # Use the default browser stack

    resources "/posts", PostController

    get "/howdy", HowdyController, :index
    get "/howdy/:messenger", HowdyController, :show

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Planner do
  #   pipe_through :api
  # end
end
