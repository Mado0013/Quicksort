def partition(array, low, high)
  pivot = array[high]
  dividing_index = low

  (low...high).each do |index|
    
    if value <= pivot
      # Swap the value into the "low" partition, and increment the dividing_index
      
    end
  end

  # Swap the lowest "high" value with the pivot
  
end

def quick_sort_in_place(array, low = 0, high = array.length - 1)
  if high > low
    pivot = partition(array, low, high)
    quick_sort_in_place(array, low, pivot - 1)
    quick_sort_in_place(array, pivot + 1, high)
  end
  array
end

unsorted_array = (1..1000000).to_a.shuffle
time1 = Time.now
sorted = quick_sort_in_place(unsorted_array.dup)
time2 = Time.now
puts "QUICK_SORT_IN_PLACE SORTED CORRECTLY: #{sorted2 == unsorted_array.sort}\n#{time2 - time1}sec\n\n"#"\n\n#{unsorted_array}\n\n#{sorted2}"

