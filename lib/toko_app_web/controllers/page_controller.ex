defmodule TokoAppWeb.PageController do
  use TokoAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
