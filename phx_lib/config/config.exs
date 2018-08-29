# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phx_lib, PhxLibWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s43FsT0EifkhKw9pYr94FOSJE4+/+QcaJL5EwqoL/m8RpS2QWhKvQZdxv2G+0qLN",
  render_errors: [view: PhxLibWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxLib.PubSub, adapter: Phoenix.PubSub.PG2],
  server: true

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
