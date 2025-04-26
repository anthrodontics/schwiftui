defmodule SchwiftUI.Sidebar do
  use SchwiftUI, :component

  def sidebar(assigns) do
    ~H"""
    <ul class="menu bg-base-200 rounded-box w-56">
      <li><a>Item 1</a></li>
      <li><a>Item 2</a></li>
      <li><a>Item 3</a></li>
    </ul>
    """
  end
end
