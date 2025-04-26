defmodule SchwiftUI.ButtonTest do
  use ExUnit.Case
  import Phoenix.Component
  import Phoenix.LiveViewTest

  import SchwiftUI.Button

  describe "Test Button" do
    test "It renders the default button" do
      assigns = %{}

      html =
        rendered_to_string(~H"""
          <.button>Send!</.button>
        """)

      assert html =~ "Default"
      assert html =~ "<button class=\"btn\">Default</button>"
    end
  end
end
