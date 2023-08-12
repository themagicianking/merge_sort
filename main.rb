def merge_sort(array)
  def merge_stuff(left, right)
    sorted_array = []
    pp left
    for i in 0..(left.length - 1)
      left[i] > right [i] ? sorted_array = sorted_array + [right[i]] : sorted_array = sorted_array + [left[i]]
    end
  end

  if array.length < 2
    return array
  elsif array.length.even?
    left = array[0..(array.length/2) - 1]
    left = merge_sort(left)
    right = array[(array.length/2)..array.length - 1]
    right = merge_sort(right)
  else
    left = array[0..(array.length/2 + 0.5) - 1]
    left = merge_sort(left)
    right = array[(array.length/2 + 0.5)..array.length - 1]
    right = merge_sort(right)
  end
end


pp merge_sort([4, 3, 2, 1])