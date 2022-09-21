def partition(array, low, high)
  pivot = array[high]
  dividing_index = low

  (low...high).each do |index|
    value = array[index]
    puts "value: #{value}, pivot: #{pivot}, dividing_index: #{dividing_index} index: #{index}"
    puts value <= pivot
    puts "array: #{array}"
    if value <= pivot
      # Swap the value into the "low" partition, and increment the dividing_index
      array[index] = array[dividing_index]
      array[dividing_index] = value
      dividing_index += 1
    end
  end

  # Swap the lowest "high" value with the pivot
  array[high] = array[dividing_index]
  array[dividing_index] = pivot
  dividing_index
end

def quick_sort_in_place(array, low = 0, high = array.length - 1)
  if high > low
    pivot = partition(array, low, high)
    quick_sort_in_place(array, low, pivot - 1)
    quick_sort_in_place(array, pivot + 1, high)
  end
  array
end

unsorted_array = [5, 3, 1, 4, 2]
time2 = Time.now
sorted2 = quick_sort_in_place(unsorted_array.dup)
time3 = Time.now
puts "QUICK_SORT_IN_PLACE SORTED CORRECTLY: #{sorted2 == unsorted_array.sort}\n#{time3 - time2}sec\n\n"#"\n\n#{unsorted_array}\n\n#{sorted2}"
