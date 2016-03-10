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
  
  def _factorial( 0, value ), do: value
  def _factorial( 1, value ), do: value
  def _factorial( number, value ) do
    _factorial( number - 1, number * value )
  end
      
end
