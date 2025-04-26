defmodule SchwiftUI.Button do
  use SchwiftUI, :component

  def button(assigns) do
    ~H"""
    <button class="btn">Default</button>
    """
  end
end
