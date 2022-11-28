import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :live_cursors, LiveCursorsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "1b6uOJ4cnFDWYw6RJg86c9oI/zs95JNyp7imTwXS70Idcg8JPsTbc38B/Oy/nq8K",
  server: false

# In test we don't send emails.
config :live_cursors, LiveCursors.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
