defmodule TokoApp.Repo do
  use Ecto.Repo,
    otp_app: :toko_app,
    adapter: Ecto.Adapters.SQLite3
end
