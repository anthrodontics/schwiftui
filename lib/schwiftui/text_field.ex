defmodule SchwiftUI.TextField do
  use SchwiftUI, :component

  def textfield(assigns) do
    ~H"""
    <input type="text" placeholder="Type here" class="input" />
    """
  end

  def validate(assigns) do
    ~H"""
    <input class="input validator" type="email" required placeholder="mail@site.com" />
    <div class="validator-hint">Enter valid email address</div>
    """
  end
end
