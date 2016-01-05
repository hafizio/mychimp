defmodule Mychimp do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Mychimp.config, []),
    ]

    opts = [strategy: :one_for_one, name: Aliver.Supervisor]
    Mychimp.Supervisor.start_link(children, opts)
  end
end
