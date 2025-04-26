defmodule SchwiftUI.Fieldset do
  use SchwiftUI, :component

  def fieldset(assigns) do
    ~H"""
    <fieldset class="fieldset">
      <legend class="fieldset-legend">Page title</legend>
      <input type="text" class="input" placeholder="My awesome page" />
      <p class="label">You can edit page title later on from settings</p>
    </fieldset>
    """
  end
end
