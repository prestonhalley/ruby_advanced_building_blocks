def switch_place(item1, item2)
	place_holder = item1
	item1 = item2
	item2 = place_holder
	return [item1, item2]
end

def bubble_sort(arr)
    (arr.size - 1).times do |x|
        (arr.size - (1 + x)).times do |y|
            arr[y..y+1] = switch_place(arr[y], arr[y+1]) if arr[y] > arr[y+1]
        end
    end
    return arr
end

list1 = [4,3,78,2,0,2]

p bubble_sort(list1)

def bubble_sort_by(arr)
    (arr.size - 1).times do |x|
        (arr.size - (1 + x)).times do |y|
            arr[y..y+1] = switch_place(arr[y], arr[y+1]) if yield(arr[y], arr[y+1]) > 0
        end
    end
    return arr
end

list2 = ["hi", "hello", "hey"]

bubble_sort_by(list2) do |left,right|
    left.length - right.length
end

p list2