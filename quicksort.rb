def quick_sort(array)
  # TODO: implement the quick sort algorithm with 2 arrays

  array
end

unsorted_array = (1..1000000).to_a.shuffle
time1 = Time.now
sorted1 = quick_sort(unsorted_array.dup)
time2 = Time.now
puts "QUICK_SORT SORTED CORRECTLY: #{sorted1 == unsorted_array.sort}\n#{time2 - time1}sec\n\n"
