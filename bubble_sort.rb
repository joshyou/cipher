def bubble_sort(array)
    array.length.times do |n|
        (0...array.length - n - 1).each do |index|
            if array[index] > array[index + 1]
                lower = array[index + 1]
                array[index + 1] = array[index]
                array[index] = lower
            end
        end
    end
    puts array
end

#sorts using a block
def bubble_sort_by(array)
    array.length.times do |n|
        (0...array.length - n - 1).each do |index|
            if yield(array[index], array[index + 1]) < 0
                lower = array[index + 1]
                array[index + 1] = array[index]
                array[index] = lower
            end
        end
    end
    puts array
end

bubble_sort([8, 3, 5, 1, 6, 10, 4, 7, 2, 11, 9])
bubble_sort_by(["hi","hello","hey"]) do |left,right|
    right.length - left.length
end