defmodule WallabyStressTestWeb.Router do
  use WallabyStressTestWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WallabyStressTestWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/another", PageController, :another
  end

  # Other scopes may use custom stacks.
  # scope "/api", WallabyStressTestWeb do
  #   pipe_through :api
  # end
end
