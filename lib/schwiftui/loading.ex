defmodule SchwiftUI.Loading do
  use SchwiftUI, :component

  def loading(assigns) do
    ~H"""
    <span class="loading loading-spinner loading-xs"></span>
    <span class="loading loading-spinner loading-sm"></span>
    <span class="loading loading-spinner loading-md"></span>
    <span class="loading loading-spinner loading-lg"></span>
    <span class="loading loading-spinner loading-xl"></span>
    """
  end
end
