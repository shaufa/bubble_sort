def bubble_sort input
    continue = false
    loop do
        continue = false
        input.each_with_index do |v, i|
            next if i == 0
            if v < input[i-1]
                input.insert(i-1, v)
                input.delete_at(i+1)
                continue = true
            end
        end
        break unless continue
    end
    input
end

input = [100,3,412,41,23,4,5,1,6,67,34,5,2,43,134,13,5,6,456,45,53,3].to_a
p bubble_sort(input.to_a)