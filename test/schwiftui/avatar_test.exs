defmodule SchwiftUI.Avatartest do
  use ExUnit.Case
  import Phoenix.Component
  import Phoenix.LiveViewTest

  import SchwiftUI.Avatar

  describe "Test Avatar" do
    test "It renders an avatar correctly" do
      assigns = %{}

      html =
        rendered_to_string(~H"""
            <.avatar>
              <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
            </.avatar>
        """)

      assert html =~ "w-24"
    end
  end
end
