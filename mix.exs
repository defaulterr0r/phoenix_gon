defmodule PhoenixGon.Mixfile do
  use Mix.Project

  def project do
    [
      app: :phoenix_gon_fork,
      version: "0.5.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/defaulterr0r/phoenix_gon_fork"
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    PhoenixGonFork hex - your Phoenix variables in your JavaScript.
    Without problems with releases now (because no Mix.env() check in runtime).
    """
  end

  defp package do
    [
      name: :phoenix_gon_fork,
      files: ~w{lib} ++ ~w{mix.exs README.md},
      maintainers: ["defaulterr0r"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/defaulterr0r/phoenix_gon_fork"}
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:jason, "~> 1.0"},
      {:phoenix_html, "~> 2.11"},
      {:plug, "~> 1.7"},
      {:recase, "~> 0.6"}
    ]
  end
end
