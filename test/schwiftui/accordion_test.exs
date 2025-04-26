defmodule SchwiftUI.AccordionTest do
  use ExUnit.Case
  import Phoenix.Component
  import Phoenix.LiveViewTest

  import SchwiftUI.Accordion

  describe "Test Accordion" do
    test "It renders an accordion correctly" do
      assigns = %{}

      html =
        rendered_to_string(~H"""
          <.accordion>
            <:collapse label="How do I create an account?" checked="checked">
              Click the "Sign Up" button in the top right corner and follow the registration process.
            </:collapse>
          </.accordion>
        """)

      assert html =~ "How do I create an account?"
    end
  end
end
