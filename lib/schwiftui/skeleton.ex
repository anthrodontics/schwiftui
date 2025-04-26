defmodule SchwiftUI.Skeleton do
  use SchwiftUI, :component

  def skeleton(assigns) do
    ~H"""
    <div class="skeleton h-32 w-32"></div>
    """
  end
end
