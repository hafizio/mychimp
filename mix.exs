defmodule Mychimp.Mixfile do
  use Mix.Project

  def project do
    [app: :mychimp,
      version: "0.0.1",
      elixir: "~> 1.2",
      description: description,
      package: package,
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      docs: [readme: "README.md", main: "README"]]
  end

  def application do
    [mod: {Mychimp,[]},
      applications: [:logger, :httpoison]]
  end

  defp deps do
    [{:httpoison, "~> 0.7.3"},
      {:poison, "~> 1.5.0"}]
  end

  defp description do
    """
    A shameless clone. Just like rebuilding the lego.
    """
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Hafiz Khairudin"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/hafizio/mychimp"}]
  end
end
