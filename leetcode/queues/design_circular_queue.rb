class MyCircularDeque
  =begin
      Initialize your data structure here. Set the size of the deque to be k.
      :type k: Integer
  =end
  def initialize(k)
    @deque = []
    @max_elements = k
  end
  
  
  =begin
      Adds an item at the front of Deque. Return true if the operation is successful.
      :type value: Integer
      :rtype: Boolean
  =end
  def insert_front(value)
    if @deque.size < @max_elements
      @deque.unshift(value)
      return true
    else
      return false
    end
  end

  =begin
      Adds an item at the rear of Deque. Return true if the operation is successful.
      :type value: Integer
      :rtype: Boolean
  =end
  def insert_last(value)
    p @deque
    if @deque.size < @max_elements
      @deque.push(value)
      return true
    else
      return false
    end
  end
  
  =begin
      Deletes an item from the front of Deque. Return true if the operation is successful.
      :rtype: Boolean
  =end
  def delete_front()
    if @deque.size.zero?
      return false
    else
      @deque.shift
      return true
    end
  end
  
  =begin
      Deletes an item from the rear of Deque. Return true if the operation is successful.
      :rtype: Boolean
  =end
  def delete_last()
    if @deque.size.zero?
      return false
    else
      @deque.pop
      return true
    end
  end
  
  =begin
      Get the front item from the deque.
      :rtype: Integer
  =end
  def get_front()
    if @deque[0].nil?
      return -1
    else
      return @deque[0]
    end
  end
  
  =begin
      Get the last item from the deque.
      :rtype: Integer
  =end
  def get_rear()
    if @deque[-1].nil?
      return -1
    else
      return @deque[-1]
    end
  end
  
  =begin
      Checks whether the circular deque is empty or not.
      :rtype: Boolean
  =end
  def is_empty()
    return @deque.empty?
  end
  
  
  =begin
      Checks whether the circular deque is full or not.
      :rtype: Boolean
  =end
  def is_full()
    return @deque.size == @max_elements
  end
end
