defmodule SchwiftUI.Avatar do
  use SchwiftUI, :component

  def avatar(assigns) do
    ~H"""
    <div class="avatar">
      <div class="w-24 rounded">
        <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
      </div>
    </div>
    """
  end
end
