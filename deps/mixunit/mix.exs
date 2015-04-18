defmodule MixUnit.Mixfile do
use Mix.Project

  def project do
    [
      app: :mixunit,
      version: "0.9.1",
      description: "an eunit task for mix",
      package: package
    ]
  end

  defp package do
    [
      files: [
        "LICENSE",
        "mix.exs",
        "README.md",
        "lib"
      ],
      contributors: ["alisdair sullivan"],
      links: %{"github" => "https://github.com/talentdeficit/mixunit"},
      licenses: ["MIT"]
    ]
  end
end