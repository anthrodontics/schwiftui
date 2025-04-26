defmodule SchwiftUI.Toggle do
  use SchwiftUI, :component

  def toggle(assigns) do
    ~H"""
    <label class="swap">
      <input type="checkbox" />
      <div class="swap-on">ON</div>
      <div class="swap-off">OFF</div>
    </label>
    """
  end

  def checkbox(assigns) do
    ~H"""
    <input type="checkbox" checked="checked" class="checkbox" />
    """
  end

  def toggle2(assigns) do
    ~H"""
    <input type="checkbox" checked="checked" class="toggle" />
    """
  end
end
