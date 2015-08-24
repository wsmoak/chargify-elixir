defmodule Chargify.Subscriptions do
  @moduledoc """
  Subscriptions calls for Chargify.
  """

  @doc """
  List subscriptions in Chargify
  """
  def list do
    Chargify.request("subscriptions")
  end

end
