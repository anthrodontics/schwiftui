defmodule SchwiftUI.Steps do
  use SchwiftUI, :component

  def steps(assigns) do
    ~H"""
    <ul class="steps">
      <li class="step step-primary">Register</li>
      <li class="step step-primary">Choose plan</li>
      <li class="step">Purchase</li>
      <li class="step">Receive Product</li>
    </ul>
    """
  end
end
