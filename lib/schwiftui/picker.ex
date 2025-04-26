defmodule SchwiftUI.Picker do
  use SchwiftUI, :component

  def picker(assigns) do
    ~H"""
    <input type="radio" name="radio-2" class="radio radio-xs" checked="checked" />
    <input type="radio" name="radio-2" class="radio radio-sm" checked="checked" />
    <input type="radio" name="radio-2" class="radio radio-md" checked="checked" />
    <input type="radio" name="radio-2" class="radio radio-lg" checked="checked" />
    <input type="radio" name="radio-2" class="radio radio-xl" checked="checked" />
    """
  end

  def select(assigns) do
    ~H"""
    <select class="select">
      <option disabled selected>Pick a color</option>
      <option>Crimson</option>
      <option>Amber</option>
      <option>Velvet</option>
    </select>
    """
  end
end
