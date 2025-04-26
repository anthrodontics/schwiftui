defmodule SchwiftUI.Collapse do
  @moduledoc """
    Collapse is used for showing and hiding content.

    ## Examples

    <.collapse label="How do I create a new account?">
      Click the "Sign Up" button in the top right corner and follow the registration process."
    </.collapse>
  """
  use SchwiftUI, :component

  attr(:label, :string, doc: "Title label")
  slot(:inner_block)

  def collapse(assigns) do
    ~H"""
    <div tabindex="0" class="collapse bg-base-100 border-base-300 border">
      <div class="collapse-title font-semibold">{@label}</div>
      <div class="collapse-content text-sm">
        {render_slot(@inner_block)}
      </div>
    </div>
    """
  end
end
