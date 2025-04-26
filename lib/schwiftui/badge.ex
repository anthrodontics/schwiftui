defmodule SchwiftUI.Badge do
  @moduledoc """
    Badges are used to inform the user of the status of specific data.

  """
  use SchwiftUI, :component

  @doc """
  ## Examples

  <.badge>Badge</.badge>

  <.badge size="mini">Mini</.badge>
  <.badge size="small">Small</.badge>
  <.badge size="regular">Regular</.badge>
  <.badge size="large">Large</.badge>
  <.badge size="extraLarge"Extra Large</.badge>

  <.badge role="primary">Primary</.badge>
  <.badge role="secondary">Secondary</.badge>
  <.badge role="accent">Accent</.badge>
  <.badge role="neutral">Neutral</.badge>
  <.badge role="info">Info</.badge>
  <.badge role="success">Success</.badge>
  <.badge role="warning">Warning</.badge>
  <.badge role="error">Error</.badge>
  """
  attr(:style, :string,
    values: ~w(nil outline dash soft ghost),
    default: "nil",
    doc: "Badge appearance"
  )

  attr(:role, :string,
    values: ~w(neutral primary secondary accent info success warning error),
    default: "primary",
    doc: "Badge colour"
  )

  attr(:size, :string,
    values: ~w(mini small regular large extraLarge),
    default: "regular",
    doc: "Amount of roundedness that should be applied"
  )

  slot(:inner_block, required: true)

  def badge(assigns) do
    assigns =
      assigns
      |> assign(:role, colour(assigns.role))
      |> assign(:style, style(assigns.style))
      |> assign(:size, size(assigns.size))

    ~H"""
    <div class={["badge", @style, @size, @role]}>{render_slot(@inner_block)}</div>
    """
  end

  def badge_roles, do: ~w(neutral primary secondary accent info success warning error)

  defp size("mini"), do: "badge-xs"
  defp size("small"), do: "badge-sm"
  defp size("regular"), do: "badge-md"
  defp size("large"), do: "badge-lg"
  defp size("extraLarge"), do: "badge-xl"

  defp colour(colour), do: "badge-#{colour}"

  defp style("nil"), do: nil
  defp style(style), do: style
end
