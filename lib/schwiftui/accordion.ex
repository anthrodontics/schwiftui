defmodule SchwiftUI.Accordion do
  @moduledoc """
    Accordion is used for showing and hiding content but only one item can stay open at a time.

    ## Examples

    <.accordion>
      <:collapse label="How do I create an account?">
        Click the "Sign Up" button in the top right corner and follow the registration process.
      </:collapse>
      <:collapse label="I forgot my password. What should I do?">
        Click on "Forgot Password" on the login page and follow the instructions sent to your email.
      </:collapse>
      <:collapse label="How do I update my profile information?">
        Go to "My Account" settings and select "Edit Profile" to make changes.
      </:collapse>
    </.accordion>
  """
  use SchwiftUI, :component

  attr(:id, :string,
    default: "accordion",
    doc: "Identifier to keep track of internal closed/open state"
  )

  slot :collapse, doc: "Content that can be hidden/shown" do
    attr(:label, :string, doc: "Title label")
    attr(:checked, :string)
  end

  def accordion(assigns) do
    ~H"""
    <div :for={collapse <- @collapse} class="collapse bg-base-100 border border-base-300">
      <input type="radio" name={@id} checked={collapse.checked} />
      <div class="collapse-title font-semibold">{collapse.label}</div>
      <div class="collapse-content text-sm">{render_slot(collapse)}</div>
    </div>
    """
  end
end
