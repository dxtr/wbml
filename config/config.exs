# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wbml,
  ecto_repos: [Wbml.Repo]

# Configures the endpoint
config :wbml, Wbml.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PsOs6y2iVsNSK1fTzOVKZTF3rB3gdKwpCthwaP9VQXwHo9mpwe1sD7IDae3qSB8y",
  render_errors: [view: Wbml.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Wbml.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
