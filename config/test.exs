import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :example_17x_app, Example17xAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "UQC36Ao8Wfvlks9poiKZy0bj6GfwokQ3urQjWICNibhtH0zRjWCKdPZ+adTR8cGC",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
