defmodule SchwiftUI.Indicator do
  use SchwiftUI, :component

  def indicator(assigns) do
    ~H"""
    <div class="indicator">
      <span class="indicator-item status status-success"></span>
      <div class="bg-base-300 grid h-32 w-32 place-items-center">content</div>
    </div>
    """
  end
end
