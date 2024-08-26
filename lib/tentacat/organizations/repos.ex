defmodule Tentacat.Organizations.Repos do
  import Tentacat
  alias Tentacat.Client

  @doc """
  Lists the repos in an organization.

  ## Example

      Tentacat.Organizations.Repos.list client, "elixir"
  """
  @spec list(Client.t(), binary) :: Tentacat.response()
  def list(client, organization) do
    get("orgs/#{organization}/repos", client)
  end
end
