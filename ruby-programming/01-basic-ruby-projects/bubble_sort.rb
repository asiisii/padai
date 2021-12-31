# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(arr, sorted_arr = [])
  while arr.length > 0 do
    index = arr.index(arr.min)
    removed_num = arr.delete_at(index)
    sorted_arr.push(removed_num)
  end
  sorted_arr
end

print bubble_sort([4,3,78,2,0,2])
