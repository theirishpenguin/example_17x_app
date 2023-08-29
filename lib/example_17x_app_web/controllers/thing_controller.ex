defmodule Example17xAppWeb.ThingController do
  use Example17xAppWeb, :controller

  require Logger

  def show(conn, _) do
    render(conn, "show.json-api", data: %{volume_level: 33})
  end
end
