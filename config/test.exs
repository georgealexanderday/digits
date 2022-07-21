import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :digits, DigitsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "HdOIUPwOMShcumWTlBB2JmmTxzK+aJL3sqR1cjS97Otv9DGDfn8+SCra3b3IgEC+",
  server: false

# In test we don't send emails.
config :digits, Digits.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
