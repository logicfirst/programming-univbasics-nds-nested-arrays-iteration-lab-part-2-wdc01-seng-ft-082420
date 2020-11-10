def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  low_temps = []
  row_index = 0

  while row_index < src.count do
    element_index = 0
    low_temp = src[row_index][element_index]
    while element_index < src[row_index].count do
      if src[row_index][element_index] <= low_temp
        low_temp = src[row_index][element_index]
      end
      element_index += 1
    end
    low_temps << low_temp
    row_index += 1
  end
  low_temps
end