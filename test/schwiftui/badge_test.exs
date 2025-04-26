defmodule SchwiftUI.BadgeTest do
  use ExUnit.Case
  import Phoenix.Component
  import Phoenix.LiveViewTest

  import SchwiftUI.Badge

  describe "Test Badge" do
    test "It renders a badge correctly" do
      assigns = %{}

      html =
        rendered_to_string(~H"""
            <.badge>Badge</.badge>
        """)

      assert html =~ "Badge"
    end

    test "It supports badge colours" do
      for colour <- badge_roles() do
        assigns = %{colour: colour}

        html =
          rendered_to_string(~H"""
          <.badge role={@colour}>My Badge</.badge>
          """)

        assert html =~ "badge badge-md badge-#{colour}"
        assert html =~ "My Badge"
      end
    end
  end
end
