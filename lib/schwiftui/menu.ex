defmodule SchwiftUI.Menu do
  @moduledoc """
    Dropdown can open a menu or any other element when the button is clicked.

    ## Examples:

    <.menu label="Click Me!">
      <:button>Item 1</:button>
      <:button>Item 2</:button>
    </.menu>

  """
  use SchwiftUI, :component

  attr(:label, :string, doc: "Button label to open/close dropdown")
  slot(:button)

  def menu(assigns) do
    ~H"""
    <div class="dropdown">
      <div tabindex="0" role="button" class="btn m-1">{@label}</div>
      <ul tabindex="0" class="dropdown-content menu bg-base-100 rounded-box z-1 w-52 p-2 shadow-sm">
        <li :for={btn <- @button}><a>{render_slot(btn)}</a></li>
      </ul>
    </div>
    """
  end
end
