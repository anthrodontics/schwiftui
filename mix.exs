defmodule SchwiftUI.MixProject do
  use Mix.Project

  def project do
    [
      app: :schwiftui,
      version: "0.0.1",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "SchwiftUI",
      description: description(),
      source_url: "https://anthrodontics.com",
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description() do
    "Declarative, stateless components for Phoenix LiveView."
  end

  defp package() do
    [
      maintainers: "Brian Kim",
      licenses: ["MIT"],
      links: %{"Website" => "https://anthrodontics.com"}
    ]
  end

  defp docs() do
    [main: "readme", extras: ["README.md"]]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:phoenix_live_view, "~> 1.0.10"},
      {:tailwind, "~> 0.3", runtime: Mix.env() == :dev},
      {:ex_doc, "~> 0.24", only: [:dev, :test], runtime: false}
    ]
  end
end
