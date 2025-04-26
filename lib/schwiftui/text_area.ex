defmodule SchwiftUI.TextArea do
  use SchwiftUI, :component

  def textarea(assigns) do
    ~H"""
    <textarea class="textarea" placeholder="Bio"></textarea>
    """
  end
end
