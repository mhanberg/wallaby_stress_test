defmodule WallabyStressTestWeb.PageController do
  use WallabyStressTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def another(conn, _) do
    render(conn, "another.html")
  end
end
