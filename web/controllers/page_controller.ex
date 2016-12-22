defmodule TrelloClone.PageController do
  use TrelloClone.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
