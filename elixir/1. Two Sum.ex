defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    nums
    |> Enum.reduce_while({0, %{}}, fn num, {index, indexes} ->
        delta = target - num
        first_index = indexes[delta]
        if nil != first_index do
            {:halt, [ first_index, index ]}
        else
            {:cont, {1+index, indexes |> Map.put(num, index)}}
        end
       end)
  end
end
