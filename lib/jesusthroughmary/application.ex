defmodule Jesusthroughmary.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      JesusthroughmaryWeb.Telemetry,
      Jesusthroughmary.Repo,
      {DNSCluster, query: Application.get_env(:jesusthroughmary, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Jesusthroughmary.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Jesusthroughmary.Finch},
      # Start a worker by calling: Jesusthroughmary.Worker.start_link(arg)
      # {Jesusthroughmary.Worker, arg},
      # Start to serve requests, typically the last entry
      JesusthroughmaryWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Jesusthroughmary.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    JesusthroughmaryWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
