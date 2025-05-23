defmodule SchwiftUI.Tabs do
  use SchwiftUI, :component

  def tabs(assigns) do
    ~H"""
    <div role="tablist" class="tabs">
      <a role="tab" class="tab">Tab 1</a>
      <a role="tab" class="tab tab-active">Tab 2</a>
      <a role="tab" class="tab">Tab 3</a>
    </div>
    """
  end
end
