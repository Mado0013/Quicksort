def quick_sort(array)
  if array.length > 1
    pivot = array.pop
    left, right = [], []
    for value in array
      value <= pivot ? left.push(value) : right.push(value)
    end

    array = quick_sort(left) + [pivot] + quick_sort(right)
  end

  array
end

unsorted_array = (1..1000000).to_a.shuffle
time1 = Time.now
sorted1 = quick_sort(unsorted_array.dup)
time2 = Time.now
puts "QUICK_SORT SORTED CORRECTLY: #{sorted1 == unsorted_array.sort}\n#{time2 - time1}sec\n\n"
