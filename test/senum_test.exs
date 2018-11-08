defmodule SEnumTest do
  use ExUnit.Case
  doctest SEnum

  describe "zip_into_map" do
    test "should zip two list into map" do
      enum1 = [:hello, :bob, :alice] |> Enum.sort
      enum2 = [:test1, :test2, :test3] |> Enum.sort
      map = SEnum.zip_into_map(enum1, enum2)

      assert enum1 == Map.keys(map) |> Enum.sort
      assert enum2 == Map.values(map) |> Enum.sort
    end
  end
end
