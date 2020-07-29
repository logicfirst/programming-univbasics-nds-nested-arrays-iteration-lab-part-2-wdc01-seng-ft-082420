def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  
  row_index = 0 
  daily_min_temp = [ ]

  while row_index < src.count do 
    element_index = 0
    hourly_temp = src[row_index][element_index]
    while element_index < src[row_index].count do
    
      if 
        src[row_index][element_index] < hourly_temp
        hourly_temp = src[row_index][element_index]
      end
      element_index += 1 
    end
    daily_min_temp << hourly_temp
    row_index += 1
  end  
  daily_min_temp  

end