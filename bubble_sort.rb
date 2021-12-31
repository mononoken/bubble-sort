def swap_elements(array, index1, index2)
  array[index1], array[index2] = array[index2], array[index1]
  array
end

def bubble_once(array)
  bubbled_array = array
  bubbled_array.each_with_index do |left_num, left_index|
    if  
      right_index = left_index + 1
      right_num = array[right_index]

      if right_index == bubbled_array.length
        break
      else
        if right_num < left_num
          swap_elements(bubbled_array, left_index, right_index)
        end
      end
    end
  end
  bubbled_array
end

test_array = [4,3,78,2,0,2]
p test_array
p bubble_once(test_array)