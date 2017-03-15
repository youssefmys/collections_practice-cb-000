def sort_array_asc (array)
  array.sort 
end

def sort_array_desc (array)
  array.sort do |a,b|
    if a == b
      0
    elsif a < b
      1
    elsif a > b
      -1
    end
  end         
end


def sort_array_char_count (array)
  array.sort do |a,b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end
end


def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_from_to(array, index, distination_index)

  if index >= array.length || distination_index >= array.length
    return false
  end
  
  temp_1 = temp_2 = 0
  i = 0 
  array.collect do |element|
    if i == index
      temp_1 = element
    elsif i == distination_index
      temp_2 = element
    end
    i+=1
  end

  array[distination_index] = temp_1
  array[index] = temp_2
  array
end

def reverse_array (array)
  array.reverse
end


def kesha_maker(array)
  kesha_array = [] 
  array.each do |element|
    element[2]= "$"
    kesha_array << element
  end
  kesha_array
end

def find_a(array)
  array.select do |element|
    element[0] == "a"
  end
end

def sum_array(array)
  array.inject do |sum, element|
    sum + element
  end
end

def add_s(array)
  new_array = []
  
  array.each_with_index do |element, i|
    if i == 1
      new_array << element 
    elsif
      element << "s"
      new_array << element
    end
    i+=1
  end
  
end

puts swap_elements(["a", "b", "c"])
puts swap_elements_from_to(["a", "b", "c"],0,2)
puts swap_elements_from_to(["a", "b", "c"],2,1)
puts reverse_array (["a","b","c"])
puts kesha_maker(["hello","hello","hello"])
puts find_a(["apple", "orange", "pear", "avis", "arlo", "ascot" ])
puts sum_array([1,10,30])
puts add_s(["pen", "feet", "bag"])
