defmodule SchwiftUI.Status do
  use SchwiftUI, :component

  def status(assigns) do
    ~H"""
    <span class="status"></span>
    """
  end
end
