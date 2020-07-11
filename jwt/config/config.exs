# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jwt,
  ecto_repos: [Jwt.Repo]

# Configures the endpoint
config :jwt, JwtWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rb1fzA7BXzqfLk9vQViPYZ89UnZnaaINwbih3+d7f2gU+5oF17tYzox6F8Ydctod",
  render_errors: [view: JwtWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Jwt.PubSub,
  live_view: [signing_salt: "k2aRzatj"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
