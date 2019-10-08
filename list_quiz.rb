def three_even? (list)
    even_count = 0
    next_to = false
    list_position = 0
    list.each do |x|
        if x % 2 == 0
            even_count += 1
            before = list_position - 1
            after = list_position + 1
            if even_count == 2 && list[before] % 2 == 0 && list[after] % 2 == 0
                next_to = true
            end
        end
        list_position += 1
    end
    if even_count == 3 && next_to 
        return true
    else
        return false
    end
end

puts three_even?([2, 1, 3, 5])
puts three_even?([2, 4, 12, 5])
puts three_even?([2, 1, 4, 6])
puts three_even?([1, 4, 6, 4])
puts three_even?([])

def bigger_two (list1, list2)
    sum1 = list1[0] + list1[1]
    sum2 = list2[0] + list2[1]
    if sum1 >= sum2
        return list1
    else
        return list2
    end
end

print bigger_two([1, 2], [3, 4]) 
puts ""
print bigger_two([1, 7], [4, 4])
puts ""

def series_up (n)
    list = []
    series = 1
    n.times do 
        series.times do |i|
            list.push(i+1)
        end
        series += 1
    end
    return list
end

print series_up(1) 
puts ""
print series_up(2) 
puts ""
print series_up(3) 
puts ""
print series_up(4)