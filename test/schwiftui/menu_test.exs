defmodule SchwiftUI.MenuTest do
  use ExUnit.Case
  import Phoenix.Component
  import Phoenix.LiveViewTest

  import SchwiftUI.Menu

  describe "Test Menu" do
    test "It renders a menu correctly" do
      assigns = %{}

      html =
        rendered_to_string(~H"""
            <.menu label="Click Me!">
              <:button>Item 1</:button>
              <:button>Item 2</:button>
            </.menu>
        """)

      assert html =~ "Click Me!"
    end
  end
end
