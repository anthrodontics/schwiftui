defmodule SchwiftUI.Tooltip do
  use SchwiftUI, :component

  def tooltip(assigns) do
    ~H"""
    <div class="tooltip" data-tip="hello">
      <button class="btn">Hover me</button>
    </div>
    """
  end
end
