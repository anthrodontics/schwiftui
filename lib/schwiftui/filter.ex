defmodule SchwiftUI.Filter do
  use SchwiftUI, :component

  def filter(assigns) do
    ~H"""
    <form class="filter">
      <input class="btn btn-square" type="reset" value="×"/>
      <input class="btn" type="radio" name="frameworks" aria-label="Svelte"/>
      <input class="btn" type="radio" name="frameworks" aria-label="Vue"/>
      <input class="btn" type="radio" name="frameworks" aria-label="React"/>
    </form>
    """
  end
end
