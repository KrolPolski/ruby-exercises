def sorted?(array)
  array.each_cons(2).all? { |a, b| a <= b }
end
def bubble_sort(array)
  #print "Before: "
  #p array
  len = array.length
  iterations = 0
  if len < 2
    return array
  end
  until sorted?(array) == true
    for i in 0..len - 2
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
    iterations += 1
  end
  #print "After: "
  #p array
  #puts "Iterations: #{iterations} which should be equal to #{len - 1} or less"
  return array
end

#tests
p bubble_sort([5, 4, 3, 2, 1])
p bubble_sort([4, 5, 3, 1, 2])
p bubble_sort([1, 2, 3, 4, 5])
p bubble_sort([1])