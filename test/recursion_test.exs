defmodule RecursionTest do
  use ExUnit.Case

  test "length on empty list" do
    subject = []

    result = Recursion.list_length( subject )

    assert 0 == result
  end

  test "length on non-empty list" do
    subject = [1,2,3,4,5,6,7,8,9]

    result = Recursion.list_length( subject )

    assert 9 == result
  end

  test "sum of an empty list" do
    subject = []

    result = Recursion.sum( subject )

    assert 0 == result
  end

  test "sum of a non-empty list" do
    subject = [1,2,3,4,5,6,7,8,9]

    result = Recursion.sum( subject )

    assert 45 == result
  end

  test "factorial of 0" do
    subject = 0

    result = Recursion.factorial( subject )

    assert 1 == result
  end

  test "factorial of 1" do
    subject = 1

    result = Recursion.factorial( subject )

    assert 1 == result
  end

  test "factorial of a number greater than 0" do
    subject = 10

    result = Recursion.factorial( subject )

    assert 3_628_800 == result
  end

  test "a number being rasied by the 0" do
    number = 10
    power = 0

    result = Recursion.power(number, power)

    assert 1 == result
  end

  test "a number being raised being raised to power > 0" do
    number = 10
    power  = 3

    result = Recursion.power( number, power )

    assert 1000 == result
  end
end
