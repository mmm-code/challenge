class LinkedListNode
  attr_accessor :value, :next_node
    
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def see_value(one_list)
	if one_list
		print "#{one_list.value}-->"
		see_value(one_list.next_node)
	else
		print "nil\n"
		return
	end
end

def reverse(one_list, previous=nil)
	first_node = one_list.next_node
	one_list.next_node = previous
	if first_node
		reverse(first_node, one_list)
	else
		one_list
	end
end

first1 = LinkedListNode.new(37)
sec2 = LinkedListNode.new(99, first1)
third3 = LinkedListNode.new(12, sec2)
fourth4 = LinkedListNode.new(24, third3)

see_value(fourth4)
puts "------"
listreverse = reverse(fourth4)
see_value(listreverse)