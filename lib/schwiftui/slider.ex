defmodule SchwiftUI.Slider do
  use SchwiftUI, :component

  def slider(assigns) do
    ~H"""
    <input type="range" min="0" max="100" value="40" class="range" />
    """
  end

  def rating(assigns) do
    ~H"""
    <div class="rating">
      <input type="radio" name="rating-1" class="mask mask-star" aria-label="1 star" />
      <input type="radio" name="rating-1" class="mask mask-star" aria-label="2 star" checked="checked" />
      <input type="radio" name="rating-1" class="mask mask-star" aria-label="3 star" />
      <input type="radio" name="rating-1" class="mask mask-star" aria-label="4 star" />
      <input type="radio" name="rating-1" class="mask mask-star" aria-label="5 star" />
    </div>
    """
  end
end
