defmodule SchwiftUI.Stack do
  use SchwiftUI, :component

  def stack(assigns) do
    ~H"""
    <div class="stack h-20 w-32">
      <div class="bg-primary text-primary-content grid place-content-center rounded-box">1</div>
      <div class="bg-accent text-accent-content grid place-content-center rounded-box">2</div>
      <div class="bg-secondary text-secondary-content grid place-content-center rounded-box">
        3
      </div>
    </div>
    """
  end
end
