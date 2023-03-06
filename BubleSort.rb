def bubble_sort(array)
  n = array.length

  # проходимся по всем элементам массива
  # и сравниваем каждый с элементами, расположенными после него
  (0..n-2).each do |i|
    (0..n-i-2).each do |j|
      # если текущий элемент больше следующего, меняем их местами
      if array[j] > array[j+1]
        array[j], array[j+1] = array[j+1], array[j]
      end
    end
  end

  # возвращаем отсортированный массив
  array
end

# пример использования
arr = [64, 34, 25, 12, 22, 11, 90]
sorted_arr = bubble_sort(arr)
puts sorted_arr.inspect #=> [11, 12, 22, 25, 34, 64, 90]