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

begin
  raise Error unless list1.size == 2
  raise Error unless list2.size == 2
rescue
  puts 'Either size call failed or the list size is wrong!'
end

begin
  raise Error unless list1.head.value == 1
  raise Error unless list2.head.value == 2
rescue
  puts 'Either head call failed or head node is allocated wrongly!'
end
  
begin
  raise Error unless list1.tail.value == 2
  raise Error unless list2.tail.value == 1
rescue
  puts 'Either tail call failed or tail node is allocated wrongly!'
end
  