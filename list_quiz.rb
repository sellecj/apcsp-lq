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
    if even_count == 3 && next_to == true
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