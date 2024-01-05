def bubble_sort(arr)
  n = arr.length
  (n - 1).times do
    for i in (0..(n-2))
      if arr[i] > arr[i + 1]
        temp = arr[i + 1]
        arr[i + 1] = arr[i]
        arr[i] = temp
      end
    end
  end
  arr
end


p bubble_sort([4,3,78,2,0,2])
