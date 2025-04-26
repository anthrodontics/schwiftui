defmodule SchwiftUI.Toast do
  use SchwiftUI, :component

  def toast(assigns) do
    ~H"""
    <div class="toast">
      <div class="alert alert-info">
        <span>New message arrived.</span>
      </div>
    </div>
    """
  end
end
