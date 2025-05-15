def bubble_sort(array)
  (array.length - 1).times do
    array.each_with_index do |value, index|
      next unless array[index + 1] && value > array[index + 1]

      array[index] = array[index + 1]
      array[index + 1] = value
      p array
    end
  end
end

bubble_sort([4, 3, 78, 2, 0, 2])
