defmodule SchwiftUI.Join do
  use SchwiftUI, :component

  def join(assigns) do
    ~H"""
    <div class="join">
      <button class="btn join-item">Button</button>
      <button class="btn join-item">Button</button>
      <button class="btn join-item">Button</button>
    </div>
    """
  end
end
