defmodule Recursion do

  #
  # list_length
  #

  def list_length( collection ), do: _list_length( collection, 0 )

  defp _list_length( [], total ), do: total
  defp _list_length( [ head | tail ], total ) do
    _list_length( tail, total + 1 )
  end

  #
  # sum
  #

  def sum( collection ), do: _sum( collection, 0 )

  defp _sum( [], accumulator ), do: accumulator
  defp _sum( [ head | tail ], accumulator ) do
    _sum( tail, head + accumulator )
  end

  #
  # factorial
  #

  def factorial( number ), do: _factorial( number, 1 )

  defp _factorial( 0, value ), do: value
  defp _factorial( 1, value ), do: value
  defp _factorial( number, value ) do
    _factorial( number - 1, number * value )
  end

  #
  # power
  #

  def power( number, power ), do: _power(number, power, 1)

  defp _power( number, 0, value ), do: value
  defp _power( number, power, value) do
    _power( number, power - 1, number * value )
  end

end
