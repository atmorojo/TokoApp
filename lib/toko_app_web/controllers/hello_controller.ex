defmodule TokoAppWeb.HelloController do
  use TokoAppWeb, :controller

  def world(conn, %{"name" => name}) do
    render(conn, "world.html", name: name)
  end
end

