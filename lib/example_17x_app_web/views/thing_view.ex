defmodule Example17xAppWeb.ThingView do
  use JaSerializer.PhoenixView

  attributes([:volume_level])

  def id(_data, _conn) do
    "singular"
  end
end
