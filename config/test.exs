import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :use_local_font, UseLocalFontWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "y2plrAdjCcx7uLmZyJCX8fRGIof7WkLQP77YqKv34iv6/jSCeC3PYj24+l+I4lrv",
  server: false

# In test we don't send emails.
config :use_local_font, UseLocalFont.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
