defmodule SchwiftUI.Diff do
  use SchwiftUI, :component

  def diff(assigns) do
    ~H"""
    <figure class="diff aspect-16/9" tabindex="0">
      <div class="diff-item-1" role="img" tabindex="0">
        <img alt="daisy" src="https://img.daisyui.com/images/stock/photo-1560717789-0ac7c58ac90a.webp" />
      </div>
      <div class="diff-item-2" role="img">
        <img
          alt="daisy"
          src="https://img.daisyui.com/images/stock/photo-1560717789-0ac7c58ac90a-blur.webp" />
      </div>
      <div class="diff-resizer"></div>
    </figure>
    """
  end
end
