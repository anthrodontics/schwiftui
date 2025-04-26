defmodule SchwiftUI.Progress do
  use SchwiftUI, :component

  def linear_progress(assigns) do
    ~H"""
    <progress class="progress w-56" value="0" max="100"></progress>
    <progress class="progress w-56" value="10" max="100"></progress>
    <progress class="progress w-56" value="40" max="100"></progress>
    <progress class="progress w-56" value="70" max="100"></progress>
    <progress class="progress w-56" value="100" max="100"></progress>
    """
  end

  def radial_progress(assigns) do
    ~H"""
    <div class="radial-progress" style="--value:70;" aria-valuenow="70" role="progressbar">70%</div>
    """
  end
end
