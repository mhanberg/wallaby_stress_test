for i <- 1..65 do
  test_num = to_string(i)
  module_name = Module.concat(WallabyStressTestWeb.StressFeature, test_num |> String.to_atom())

  defmodule module_name do
    use WallabyStressTestWeb.FeatureCase, async: true
    # use WallabyStressTestWeb.FeatureCase

    test "doing a test", %{session: session} do
      session
      |> visit("/")
      |> assert_text("Another")

      session
      |> click(Query.link("Another"))
      |> assert_text("Home")

      session
      |> fill_in(Query.text_field("name1"), with: "Mitchell Hanberg")
      |> fill_in(Query.text_field("name2"), with: "Mitchell Hanberg")
      |> fill_in(Query.text_field("name3"), with: "Mitchell Hanberg")
      |> fill_in(Query.text_field("name4"), with: "Mitchell Hanberg")
      |> find(Query.select("town1"), fn el ->
        el
        |> click(Query.option("San Francisco"))
      end)
      |> find(Query.select("town2"), fn el ->
        el
        |> click(Query.option("San Francisco"))
      end)
      |> find(Query.select("town3"), fn el ->
        el
        |> click(Query.option("San Francisco"))
      end)
      |> find(Query.select("town4"), fn el ->
        el
        |> click(Query.option("San Francisco"))
      end)

      session
      |> click(Query.link("Home"))
      |> assert_text("Another")
    end
  end
end
