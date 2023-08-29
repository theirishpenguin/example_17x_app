defmodule Example17xApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Example17xAppWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Example17xApp.PubSub},
      # Start the Endpoint (http/https)
      Example17xAppWeb.Endpoint
      # Start a worker by calling: Example17xApp.Worker.start_link(arg)
      # {Example17xApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Example17xApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Example17xAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
