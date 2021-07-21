

def sort_array_asc(array)
    array.sort do |a, b|
        if a == b
          0
        elsif a < b
          -1
        elsif a > b
          1
        end
    end
end

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b
          0
        elsif a < b
          1
        elsif a > b
          -1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        if a.length == b.length
          0
        elsif a.length > b.length
          1
        elsif a.length < b.length
          -1
        end
    end
end

def swap_elements(array)
    return array if array.length < 3
    original_second_entry = array[1]
    array[1] = array[2]
    array[2] = original_second_entry
    array
end

def reverse_array(array)
    reversed_array = []
    while array.length > 0
        reversed_array << array.pop
    end
    reversed_array
end

def kesha_maker(array)
    array.collect do |string|
        if string.length < 3
            string
        else
            string[2] = "$"
            string
        end
    end
end

def find_a(array) # really it's more like select_a
    array.select do |entry|
        entry.start_with?("a")
    end
end

def sum_array(array)
    array.inject { |sum, n| sum + n }
end

def add_s(array)
    array.each_with_index.collect do |word, index|
        if index == 1
            word
        else
            word + "s"
        end
    end
end