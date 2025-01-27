#---
# Excerpted from "Programming Elixir ≥ 1.6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/elixir16 for more book information.
#---
defmodule Duper.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      { Duper.Results,          nil },
      { Duper.PathFinder,       "." },
      { Duper.WorkerSupervisor, nil },
      { Duper.Gatherer,         100 },
    ]

    opts = [strategy: :one_for_all, name: Duper.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
