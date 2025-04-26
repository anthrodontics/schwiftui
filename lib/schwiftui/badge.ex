defmodule SchwiftUI.Badge do
  use SchwiftUI, :component

  def badge(assigns) do
    ~H"""
    <span class="badge">Badge</span>
    """
  end
end
