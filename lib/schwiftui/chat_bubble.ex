defmodule SchwiftUI.ChatBubble do
  use SchwiftUI, :component

  def chat_bubble(assigns) do
    ~H"""
    <div class="chat chat-start">
      <div class="chat-bubble">
        It's over Anakin,
        <br />
        I have the high ground.
      </div>
    </div>
    <div class="chat chat-end">
      <div class="chat-bubble">You underestimate my power!</div>
    </div>
    """
  end
end
