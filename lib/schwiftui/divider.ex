defmodule SchwiftUI.Divider do
  use SchwiftUI, :component

  def divider(assigns) do
    ~H"""
    <div class="flex w-full flex-col">
      <div class="card bg-base-300 rounded-box grid h-20 place-items-center">content</div>
      <div class="divider">OR</div>
      <div class="card bg-base-300 rounded-box grid h-20 place-items-center">content</div>
    </div>
    """
  end
end
