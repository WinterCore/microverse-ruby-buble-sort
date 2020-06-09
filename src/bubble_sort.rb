def bubble_sort(arr)
  bubble_sort_by(arr) { |a, b| a <=> b }
end

def bubble_sort_by(arr)
  size = arr.length
  size.times do
    swapped = false
    (size - 1).times do |j|
      if yield(arr[j], arr[j + 1]).positive?
        swapped = true
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
    break unless swapped
  end
  arr
end
