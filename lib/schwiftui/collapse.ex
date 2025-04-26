defmodule SchwiftUI.Collapse do
  use SchwiftUI, :component

  def collapse(assigns) do
    ~H"""
    <div tabindex="0" class="collapse bg-base-100 border-base-300 border">
      <div class="collapse-title font-semibold">How do I create an account?</div>
      <div class="collapse-content text-sm">
        Click the "Sign Up" button in the top right corner and follow the registration process.
      </div>
    </div>
    """
  end
end
