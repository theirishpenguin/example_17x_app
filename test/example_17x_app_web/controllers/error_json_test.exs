defmodule Example17xAppWeb.ErrorJSONTest do
  use Example17xAppWeb.ConnCase, async: true

  test "renders 404" do
    assert Example17xAppWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert Example17xAppWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
