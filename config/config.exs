# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :payment,
  ecto_repos: [Payment.Repo]

# Configures the endpoint
config :payment, PaymentWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Z3hldP035ePjKIpzv2yUeD6dP6Y0j2wALmFUcn+rx1VMyj2xgQmTELg/8qtuRX04",
  render_errors: [view: PaymentWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Payment.PubSub,
  live_view: [signing_salt: "N+WrTY2U"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
