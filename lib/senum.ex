defmodule SEnum do
  @moduledoc """
  Extension for Enum module
  """

  @doc """
  zips two enumerables into a map

  ## Examples
    iex> SEnum.zip_into_map([:a, :b, :c], [1, 2, 3])
    %{a: 1, b: 2, c: 3}
  """
  @spec zip_into_map(Enum.t, Enum.t) :: Map.t
  def zip_into_map(enumerable1, enumerable2) do
    Enum.zip(enumerable1, enumerable2)
    |> Enum.into(%{})
  end
end
