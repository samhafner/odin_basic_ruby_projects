def bubble_sort(arr)
  n = arr.length

  loop do
    swapped = false

    # (n-1).times will go from 0 to (n-1)-1, so we always stay within the array
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end


p bubble_sort([4,3,78,2,0,2])
