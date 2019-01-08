defmodule Tmdb.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tmdb,
      version: "0.1.1",
      elixir: "~> 1.7",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:poison, "~> 3.1"}
    ]
  end

  defp aliases do
    [
      compile: ["compile --warnings-as-errors"]
    ]
  end
end
