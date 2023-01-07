defmodule TokoAppWeb.UserView do
  use TokoAppWeb, :view

  alias TokoApp.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end

