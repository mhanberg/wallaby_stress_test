defmodule WallabyStressTestWeb.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      import WallabyStressTestWeb.Router.Helpers
    end
  end

  setup tags do
    {:ok, session} = Wallaby.start_session()

    {:ok, session: session}
  end
end
