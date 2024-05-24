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

begin
  raise Error unless list1.at(0).value == 1
  raise Error unless list1.at(1).value == 2
  raise Error unless list2.at(0).value == 2
  raise Error unless list2.at(1).value == 1
rescue
  puts 'Either at call failed or node at at(x) is allocated wrongly'
end

begin
  raise Error unless list1.contains?(0) == false
  raise Error unless list1.contains?(1) == true
  raise Error unless list1.contains?(2) == true
  raise Error unless list2.contains?(0) == false
  raise Error unless list2.contains?(1) == true
  raise Error unless list1.contains?(2) == true
rescue
  puts 'Either contains? call failed or misevaluated'
end

begin
  raise Error unless list1.find(1) == 0
  raise Error unless list1.find(2) == 1
  raise Error unless list1.find(3) == nil
  raise Error unless list2.find(1) == 1
  raise Error unless list2.find(2) == 0
  raise Error unless list2.find(3) == nil
rescue
  puts 'Either find call failed or returned the wrong value'
end 

begin
  raise Error unless list1.to_s == '( 1 ) -> ( 2 ) -> nil'
  raise Error unless list2.to_s == '( 2 ) -> ( 1 ) -> nil'
rescue
  puts 'Either to_s call failed or returned wrong value'
end

# Prepend all other test above these last two

begin
  raise Error unless list1.pop == 2
  raise Error unless list2.pop == 1
rescue
  puts "Either pop call failed or pop returned the wrong value"
end

begin
  raise Error unless list1.pop == 1
  raise Error unless list2.pop == 2
rescue
  puts "Pop call doesn't remove items correctly"
end

begin
  raise Error unless list1.pop == nil
  raise Error unless list2.pop == nil
rescue
  puts "Pop call doesn't handle empty list correctly"
end
