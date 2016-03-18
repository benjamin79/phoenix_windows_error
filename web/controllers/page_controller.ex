defmodule Basis.PageController do
  use Basis.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
