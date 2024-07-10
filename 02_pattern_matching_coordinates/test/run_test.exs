defmodule RunTest do
  use ExUnit.Case

  describe "calculate_distance_from_origin/1" do
    test "empty_array returns empty array" do
      coordinates = []
      expected_result = []
      assert expected_result == Run.calculate_distance_from_origin(coordinates)
    end

    test "set of co-ordinates returns distances" do
      coordinates = [{1, 2}, {3, 4}, {5, 6}]
      expected_result = [2.23606797749979, 5.0, 7.810249675906654]
      assert expected_result == Run.calculate_distance_from_origin(coordinates)
    end

    test "set of negative co-ordinates returns distances" do
      coordinates = [{1, -2}, {-3, 4}, {-5, -6}]
      expected_result = [2.23606797749979, 5.0, 7.810249675906654]
      assert expected_result == Run.calculate_distance_from_origin(coordinates)
    end

    test "nil co-ordinates returns expected values" do
      coordinates = [{1, nil}, {nil, 4}, {nil, nil}]
      expected_result = [1, 4, 0]
      assert expected_result == Run.calculate_distance_from_origin(coordinates)
    end
  end
end
