# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cadastro_produto_elixir,
  ecto_repos: [CadastroProdutoElixir.Repo]

# Configures the endpoint
config :cadastro_produto_elixir, CadastroProdutoElixir.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PLdn6VDcNOD25cY/c33Ew0Z3cE2fExxSmBAcfpX/Wlkugu7TPsMj/Tx0QZE90LgL",
  render_errors: [view: CadastroProdutoElixir.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CadastroProdutoElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
