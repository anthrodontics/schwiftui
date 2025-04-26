defmodule SchwiftUI.Mask do
  use SchwiftUI, :component

  def mask(assigns) do
    ~H"""
    <img
      class="mask mask-squircle"
      src="https://img.daisyui.com/images/stock/photo-1567653418876-5bb0e566e1c2.webp" />
    """
  end
end
