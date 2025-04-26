defmodule SchwiftUI.Stat do
  use SchwiftUI, :component

  def stat(assigns) do
    ~H"""
    <div class="stats shadow">
      <div class="stat">
        <div class="stat-title">Total Page Views</div>
        <div class="stat-value">89,400</div>
        <div class="stat-desc">21% more than last month</div>
      </div>
    </div>
    """
  end
end
