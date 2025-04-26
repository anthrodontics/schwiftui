defmodule SchwiftUI.Pagination do
  use SchwiftUI, :component

  def pagination(assigns) do
    ~H"""
    <div class="join">
      <button class="join-item btn">1</button>
      <button class="join-item btn btn-active">2</button>
      <button class="join-item btn">3</button>
      <button class="join-item btn">4</button>
    </div>
    """
  end
end
