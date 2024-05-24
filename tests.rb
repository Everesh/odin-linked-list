require './linked_list'

list1 = LinkedList.new
list2 = LinkedList.new

begin
  list1.append(1)
rescue
  puts 'Appending to an empty list failed'
end

begin
  list2.prepend(1)
rescue
  puts 'Prepending to an empty list failed'
end

begin
  list1.append(2)
rescue
  puts 'Appending to a list failed'
end

begin
  list2.prepend(2)
rescue
  puts 'Prepending to a list failed'
end
