def reverse_list(head, previous = nil)
  return previous if head.nil?
  
  last_element = reverse_list(head.next, head)
  head.next = previous
  last_element
end

def reverse_list(head)
  return head if head.nil?

  array = []
  current = head
  loop do
      array.push(current)
      break if current.next.nil?
      current = current.next
  end
  array.each_with_index do |e, i|
      if i == 0
          e.next = nil
      else
          e.next = array[i-1]
      end
  end
  head = array[-1]
  head
end