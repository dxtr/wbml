defmodule Wbml.User do
  use Wbml.Web, :model

  schema "users" do
    field :name, :string
    field :realname, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :realname])
    |> validate_required([:name, :realname])
  end
end
