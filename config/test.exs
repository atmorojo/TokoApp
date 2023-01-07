import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :toko_app, TokoApp.Repo,
  database: Path.expand("../toko_app_test.db", Path.dirname(__ENV__.file)),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :toko_app, TokoAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "O5UWeh79CH5PTnmC+RDC9jbmsMqiG/ogJuqMIaNBvNGIaY4UTiAwtXNeDC6lKM9F",
  server: false

# In test we don't send emails.
config :toko_app, TokoApp.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
