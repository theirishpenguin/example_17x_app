# Using an erlang atom as module name, otherwise dashes would not be allowed in the module name.
# And if I don't do this then I get the error:
#
#   (ArgumentError) no "show" json-api template defined for
#   :"Elixir.Example17xAppWeb.ThingJSON-API"  (the module does not exist)
#
defmodule :"Elixir.Example17xAppWeb.ThingJSON-API" do
  use JaSerializer.PhoenixView

  attributes([:volume_level])

  def id(_data, _conn) do
    "singular"
  end

  def type do
    "things"
  end
end
