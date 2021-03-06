defmodule Planner.Mixfile do
  use Mix.Project

  def project do
    [app: :planner,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Planner, []},
     applications: [:phoenix, :cowboy, :logger, :ecto]]
  end

  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.12"},
     {:phoenix_ecto, "~> 0.3"},
     {:phoenix_haml, github: "crismali/phoenix_haml", branch: "bump_version_for_phoenix_0.12"},
     {:postgrex, ">= 0.0.0"},
     {:phoenix_live_reload, "~> 0.3.2"},
     {:cowboy, "~> 1.0"}]
  end
end
