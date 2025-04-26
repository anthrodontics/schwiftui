defmodule SchwiftUI.Avatar do
  @moduledoc """
    Avatars are used to show a thumbnail representation of an individual or business in the interface.
  """
  use SchwiftUI, :component

  @doc """
  Avatar

  ## Examples

  <.avatar>
    <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
  </.avatar>

  <.avatar size="extraLarge" width="24">
    <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
  </.avatar>

  <.avatar class="mask mask-hexagon" width="24">
    <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
  </.avatar>

  <.avatar class="ring-primary ring-offset-base-100 ring ring-offset-2" width="24" size="extraLarge">
    <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
  </.avatar>

  <.avatar online="true" width="24" size="extraLarge">
    <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
  </.avatar>

  <.avatar online="false" width="24" size="extraLarge">
    <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
  </.avatar>

  <.avatar placeholder="true" class="bg-neutral text-neutral-content" width="24" size="extraLarge">
    <span class="text-3xl">D</span>
  </.avatar>

  <.avatar placeholder="true" online="true" class="bg-neutral text-neutral-content" width="16" size="extraLarge">
    <span class="text-xl">AI</span>
  </.avatar>
  """
  attr(:class, :any, default: nil, doc: "Additional utilities")

  attr(:placeholder, :string,
    values: ~w(true false),
    default: "false",
    doc: "Show letters as the avatar placeholder"
  )

  attr(:online, :string,
    values: ~w(true false nil),
    default: "nil",
    doc: "Indicates the avatar's online/offline status"
  )

  attr(:width, :string, values: ~w(8 12 16 20 24), default: "24", doc: "Size of the avatar")

  attr(:size, :string,
    values: ~w(mini small regular large extraLarge),
    default: "regular",
    doc: "Amount of roundedness that should be applied"
  )

  slot(:inner_block)

  def avatar(assigns) do
    assigns =
      assigns
      |> assign(:online, online_status(assigns.online))
      |> assign(:w, width(assigns.width))
      |> assign(:rounded, rounded(assigns.size))
      |> assign(:placeholder, placeholder(assigns.placeholder))

    ~H"""
    <div class={["avatar", @placeholder, @online]}>
      <div class={[@w, @rounded, @class]}>
        {render_slot(@inner_block)}
      </div>
    </div>
    """
  end

  @doc """
    Container for multiple avatars

    ## Examples

      <.avatar_group>
        <:avatar width="12">
          <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
        </:avatar>
        <:avatar width="12">
          <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
        </:avatar>
        <:avatar width="12">
          <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
        </:avatar>
      </.avatar_group>

      <.avatar_group counter="+99">
        <:avatar width="12">
          <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
        </:avatar>
        <:avatar width="12">
          <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
        </:avatar>
        <:avatar width="12">
          <img src="https://img.daisyui.com/images/stock/photo-1534528741775-53994a69daeb.webp" />
        </:avatar>
      </.avatar_group>
  """

  slot :avatar do
    attr(:class, :any, doc: "Additional utilities")
    attr(:placeholder, :string, doc: "Show letters as the avatar placeholder")
    attr(:online, :string, doc: "Indicates the avatar's online/offline status")
    attr(:width, :string, doc: "Size of the avatar")
    attr(:size, :string, doc: "Amount of roundedness that should be applied")
  end

  attr(:counter, :string, default: nil, doc: "Additional decoration appended to end of group")

  def avatar_group(assigns) do
    ~H"""
    <div class="avatar-group -space-x-6">
      <.avatar :for={avatar <- @avatar}
        class={avatar.class}
        placeholder={avatar.placeholder}
        online={avatar.online}
        width={avatar.width}
        size={avatar.size}>{render_slot(avatar)}</.avatar>
        <%= if @counter != nil do %>
            <.avatar placeholder="true" class="bg-neutral text-neutral-content" width="12" size="extraLarge">
            <span>{@counter}</span>
          </.avatar>
        <% end %>
    </div>
    """
  end

  defp online_status("false"), do: "avatar-offline"
  defp online_status("true"), do: "avatar-online"
  defp online_status(_), do: nil

  defp width(size), do: "w-#{size}"

  defp rounded("mini"), do: "rounded-xs"
  defp rounded("small"), do: "rounded-sm"
  defp rounded("regular"), do: "rounded"
  defp rounded("large"), do: "rounded-xl"
  defp rounded("extraLarge"), do: "rounded-full"

  defp placeholder("true"), do: "avatar-placeholder"
  defp placeholder("false"), do: nil
end
