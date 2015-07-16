defmodule Chargifyex do
  @moduledoc """
  An HTTP client for Chargify.
  Copied and modified from https://github.com/slogsdon/mandrill-elixir/blob/master/lib/mandrill.ex
  """

  # Let's build on top of HTTPoison
  use Application
  use HTTPoison.Base

  def start(_type, _args) do
    Chargifyex.Supervisor.start_link
  end

  @doc """
  Creates the URL for our endpoint.
  Args:
    * endpoint - part of the API we're hitting
  Returns string
  """
  def process_url(endpoint) do
    "https://" <> key <> ":x@" <> subdomain <> ".chargify.com/" <> endpoint <> ".json?per_page=1"
  end

  @doc """
  Converts the binary keys in our response to atoms.
  Args:
    * body - string binary response
  Returns Record or ArgumentError
  """
  def process_response_body(body) do
    body
    |> JSX.decode!( [{:labels, :atom}] )
  end

  @doc """
     Needs to be a GET with no body
  """
  def request(endpoint) do
    Chargifyex.get!(endpoint, [{:Accept, "application/json"}] )
  end

  @doc """
  Grabs CHARGIFY_API_KEY from system ENV
  Returns binary
  """
  def key do
    Application.get_env(:chargifyex, :key) ||
      System.get_env("CHARGIFY_API_KEY")
  end

  @doc """
  Grabs CHARGIFY_SUBDOMAIN from system ENV
  Returns binary
  """
  def subdomain do
    Application.get_env(:chargifyex, :subdomain) ||
      System.get_env("CHARGIFY_SUBDOMAIN")
  end

end
