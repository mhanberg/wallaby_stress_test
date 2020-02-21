defmodule WallabyStressTestWeb.PageController do
  use WallabyStressTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
