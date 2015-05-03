defmodule Planner.Post do
  use Planner.Web, :model

  schema "posts" do
    field :body, :string
    field :word_count, :integer

    timestamps
  end

  @required_fields ~w(body word_count)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
