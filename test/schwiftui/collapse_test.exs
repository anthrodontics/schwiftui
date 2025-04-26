defmodule SchwiftUI.CollapseTest do
  use ExUnit.Case
  import Phoenix.Component
  import Phoenix.LiveViewTest

  import SchwiftUI.Collapse

  describe "Test Collapse" do
    test "It renders a collapse correctly" do
      assigns = %{}

      html =
        rendered_to_string(~H"""
          <.collapse label="How do I create an account?">
            Click the "Sign Up" button in the top right corner and follow the registration process.
          </.collapse>
        """)

      assert html =~ "How do I create an account?"
    end
  end
end
