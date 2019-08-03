class LinkedListNode
  attr_accessor :value, :next_node
  
  def initialize(value, next_node=nil)
  end
    
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
  end
  
  node1 = LinkedListNode.new(9)
  node2 = LinkedListNode.new(62, node1)
  node3 = LinkedListNode.new(34, node2)
  
  def print_value(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_value(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end
  
  node1 = LinkedListNode.new(9)
  node2 = LinkedListNode.new(62, node1)
  node3 = LinkedListNode.new(34, node2)
  
  print_value(node3)