#---
# Excerpted from "Programming Elixir ≥ 1.6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/elixir16 for more book information.
#---
defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app:             :issues,
      escript:         escript_config(),
      name:            "Issues",
      source_url:      "https://github.com/pragdave/issues",
      version:         "0.1.0",
      elixir:          "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps:            deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      { :httpoison, "~> 2.2" },
      { :poison,    "~> 6.0"  },
      { :ex_doc,    "~> 0.34.2" },
      { :earmark,   "~> 1.4"  },
    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
