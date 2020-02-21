{:ok, _} = Application.ensure_all_started(:wallaby)
Application.put_env(:wallaby, :base_url, WallabyStressTestWeb.Endpoint.url())

ExUnit.start(max_cases: 16)
