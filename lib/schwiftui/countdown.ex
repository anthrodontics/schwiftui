defmodule SchwiftUI.Countdown do
  use SchwiftUI, :component

  def countdown(assigns) do
    ~H"""
    <span class="countdown">
      <span style="--value:59;" aria-live="polite" aria-label="59">59</span>
    </span>
    """
  end
end
