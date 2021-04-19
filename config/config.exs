# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :inventory_management,
  ecto_repos: [InventoryManagement.Repo]

# Configures the endpoint
config :inventory_management, InventoryManagementWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Aj8a+Lf7KR7+1Rf94z+Q01rA/rBIu134ts6IG5JO9CD4sNwqfGEtNMjq4kCTaQSe",
  render_errors: [view: InventoryManagementWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: InventoryManagement.PubSub,
  live_view: [signing_salt: "UyQ9xVaO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
