defmodule SchwiftUI.CodeBlock do
  use SchwiftUI, :component

  def code_block(assigns) do
    ~H"""
    <div class="mockup-code w-full">
      <pre data-prefix="$"><code>npm i daisyui</code></pre>
    </div>
    """
  end
end
