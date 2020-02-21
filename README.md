# WallabyStressTest

This reproduces an error experienced in this issue https://github.com/elixir-wallaby/wallaby/issues/365.

By default this will fail when the tests are run in parallel. Comment and uncomment the appropriate lines to toggle between sequential tests and concurrent tests in `test/wallaby_stress_test_web/features/stress_feature_test.exs`.

```elixir
# use WallabyStressTestWeb.FeatureCase, async: true
use WallabyStressTestWeb.FeatureCase
```

Please observe the following asciicast to see this behaviour. Please note that between calls to `mix test` I switch tmux tabs and toggle the behavior specified above.

https://asciinema.org/a/44SPpu94bpazl0vfO0nNde5sZ

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
