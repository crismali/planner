defmodule Planner.HowdyController do
  use Planner.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, :index
  end
end
