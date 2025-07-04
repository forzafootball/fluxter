defmodule Fluxter.Mixfile do
  use Mix.Project

  @version "0.12.0"
  @source_url "https://github.com/lexmag/fluxter"

  def project() do
    [
      app: :fluxter,
      version: @version,
      elixir: "~> 1.14",
      deps: deps(),

      # Hex
      package: package(),
      description: desc(),

      # Docs
      name: "Fluxter",
      docs: docs()
    ]
  end

  def application() do
    [applications: [:logger], env: [host: "127.0.0.1", port: 8092]]
  end

  defp desc() do
    "High-performance and reliable InfluxDB writer for Elixir."
  end

  defp package() do
    [
      licenses: ["ISC"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp deps() do
    [{:ex_doc, "~> 0.38", only: :dev, runtime: false}]
  end

  defp docs() do
    [
      main: "Fluxter",
      source_ref: "v#{@version}",
      source_url: @source_url,
      extras: [
        "README.md",
        "CHANGELOG.md"
      ]
    ]
  end
end
