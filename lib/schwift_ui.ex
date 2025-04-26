defmodule SchwiftUI do
  @moduledoc false
  def component do
    quote do
      use Phoenix.Component
      alias Phoenix.LiveView.JS
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

  defmacro __using(_) do
    quote do
      import SchwiftUI.Menu
    end
  end
end
