defmodule Tentacat.Collaborators.RepositoryInvitations do
  import Tentacat
  alias Tentacat.Client

  @doc """
  Lists the repository invitations for the current user.

  ## Example

      Tentacat.Collaborators.RepositoryInvitations.list client
  """
  def list(client) do
    get("user/repository_invitations", client)
  end

  @doc """
  Accepts an invitation

  ## Example

      Tentacat.Collaborators.RepositoryInvitations.accept client, 1234567
  """
  def accept(client, invitation_id) do
    patch("user/repository_invitations/#{invitation_id}", client, nil)
  end
end
