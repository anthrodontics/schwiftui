defmodule SchwiftUI.Navbar do
  use SchwiftUI, :component

  def navbar(assigns) do
    ~H"""
    <div class="navbar bg-base-100 shadow-sm">
      <a class="btn btn-ghost text-xl">daisyUI</a>
    </div>
    """
  end
end
