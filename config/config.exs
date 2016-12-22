# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :trello_clone,
  ecto_repos: [TrelloClone.Repo]

# Configures the endpoint
config :trello_clone, TrelloClone.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g/L3bgaOOE/4lLFRwbA424zoq8QRwLeRUD6pKg7pyGKKijx9MY9oQqPG8FEn/tmM",
  render_errors: [view: TrelloClone.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TrelloClone.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
