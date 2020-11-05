def bubble_sort(input)
    n = input.length()
    sorted  = false
    until sorted || n == 1 do
        shifted = false
        for i in 0...n
            next if i == 0
            if input[i] < input[i-1]
                temp = input[i]
                input[i] = input[i-1]
                input[i-1] = temp
                shifted = true
            end
        end
        unless shifted
            sorted = true 
        end
        n -= 1
    end
    puts input
end

bubble_sort([4,3,78,2,0,2,3,33,15,16,15,18,2])
