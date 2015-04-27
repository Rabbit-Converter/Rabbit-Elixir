defmodule JSX.Mixfile do
use Mix.Project

  def project do
    [
      app: :jsx,
      version: "2.4.0",
      description: "an erlang application for consuming, producing and manipulating json. inspired by yajl",
      package: package,
      language: :erlang,
      erlc_options: [d: :maps_support] ++ extra_opts(Mix.env)
    ]
  end

  defp extra_opts(:dev), do: [d: :TEST]
  defp extra_opts(_), do: []

  defp package do
    [
      files: [
        "CHANGES.md",
        "LICENSE",
        "mix.exs",
        "README.md",
        "src"
      ],
      contributors: ["alisdair sullivan"],
      links: %{"github" => "https://github.com/talentdeficit/jsx"},
      licenses: ["MIT"]
    ]
  end
end

