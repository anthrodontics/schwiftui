defmodule SchwiftUI.FileInput do
  use SchwiftUI, :component

  def file_input(assigns) do
    ~H"""
    <input type="file" class="file-input" />
    """
  end
end
