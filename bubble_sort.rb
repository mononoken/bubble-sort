def swap_elements(array, index1, index2)
  swapped_array = array.dup
  swapped_array[index1], swapped_array[index2] = swapped_array[index2], swapped_array[index1]
  swapped_array
end

def bubble_once(array)
  bubbled_array = array.dup
  bubbled_array.each_with_index do |orig_num, left_index|
    if  
      left_num = bubbled_array[left_index]
      right_index = left_index + 1
      right_num = bubbled_array[right_index]

      if right_index == bubbled_array.length
        break
      else
        if right_num < left_num
          bubbled_array = swap_elements(bubbled_array, left_index, right_index)
        end
      end
    end
  end
  bubbled_array
end

def bubble_sort(unsorted_array)
  while unsorted_array != bubble_once(unsorted_array)
    unsorted_array = bubble_once(unsorted_array)
  end
  unsorted_array
end

test_array = [4,3,78,2,0,2]
p test_array
p bubble_sort(test_array)