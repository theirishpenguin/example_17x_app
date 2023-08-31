defmodule Example17xAppWeb.ThingController do
  use Example17xAppWeb, :controller

  # We use put_view() so we can control the name of the view rendered. It can be used as a plug or inline
  # in the function (as shown below in the show() function). For more details on put_view() usage look under
  # the render() documenation at https://hexdocs.pm/phoenix/0.10.0/Phoenix.Controller.html#render/3
  #
  plug :put_view, Example17xAppWeb.ThingView

  require Logger

  def show(conn, _) do
    render(conn, "show.json-api", data: %{volume_level: 33})

    # Note: If you don't want to use the plug then you can use the following (can be useful for
    # per-action based control)...
    #
    # conn
    # |> put_view(Example17xAppWeb.ThingView)
    # |> render("show.json-api", data: %{volume_level: 33})
  end
end
