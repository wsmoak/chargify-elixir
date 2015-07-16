defmodule Chargifyex.Mixfile do
  use Mix.Project

  def project do
    [app: :chargifyex,
     version: "0.0.1",
     elixir: "~> 1.0",
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      mod: { Chargifyex, [] },
      applications: [:httpoison, :exjsx, :logger]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      { :httpoison, "~> 0.6" },
      { :exjsx, "~> 3.1.0", app: false },
      { :ex_doc, "~> 0.6.1", only: :docs },
      { :earmark, "~> 0.1.12", only: :docs }
    ]
  end

  defp description do
    """
    A Chargify API wrapper for Elixir
    Requires an active account with Chargify (https://chargify.com).
    """
  end
    defp package do
    [ files: [ "lib", "mix.exs", "README.md", "LICENSE" ],
      contributors: [ "Wendy Smoak" ],
      licenses: [ "MIT" ],
      links: %{ "GitHub" => "https://github.com/wsmoak/chargify-elixir" } ]
  end
end
