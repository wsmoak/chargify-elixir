defmodule Chargifyex.Subscriptions do
  @moduledoc """
  Subscriptions calls for Chargify.
  """

  @doc """
  List subscriptions in Chargify
  """
  def list do
    Chargifyex.request("subscriptions")
  end

end
