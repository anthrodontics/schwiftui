defmodule SchwiftUI.Label do
  use SchwiftUI, :component

  def label(assigns) do
    ~H"""
    <label class="input">
      <span class="label">https://</span>
      <input type="text" placeholder="URL" />
    </label>
    """
  end
end
