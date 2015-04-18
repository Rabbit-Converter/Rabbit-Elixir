defmodule Rabbit.Mixfile do
  use Mix.Project

  def project do
    [app: :rabbitElixir,
     version: "1.0.0",
     elixir: "~> 1.0",
     package: package,
     description: description,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    ParabaikElixirConverter is just a Elixir version of Parabaik converter. It can convert from Unicode to Zawgyi-One and Zawgyi-One to Unicode vice versa.
    """
  end

  defp package do
    [# These are the default files included in the package
     files: ["lib", "priv", "mix.exs", "README.md", "LICENSE*", "license*"],
     contributors: ["Saturngod", "Arkar Aung"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/Rabbit-Converter/Rabbit-Elixir",
              "Docs" => "https://github.com/Rabbit-Converter/Rabbit-Elixir"}]     
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
    []
  end
end
