def hasCycle(head)
  ids = []
  output = false
  pointer = head
  loop do
    ids.push(pointer.object_id)
    break if pointer.nil?
    pointer = pointer.next

    if ids.index(pointer.object_id)
      output = true
      break
    end
  end
  output
end

# loop through this object
# storing in a separate array their ids
# loop stops if the id is repeated
# return the id position