def merge_sort(list)
    if list.length <= 1
        list
    else
      left = merge_sort(list[0...list.size/2])
      right = merge_sort(list[list.size/2...list.size])
      merge(left, right)
    end
end

def merge(left, right, array = [])
    (left.size + right.size).times do
        if left.empty?
            array << right.shift
        elsif right.empty?
            array << left.shift
        else
            comparison = left <=> right
            if comparison == -1
                array << left.shift
            elsif comparison == 1
                array << right.shift
            else 
                array << left.shift
            end
        end
    end
    array
end

p merge_sort([5, 6, 2, 4, 8, 1, 7, 9, 3])