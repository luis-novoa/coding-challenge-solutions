# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
def merge_trees(t1, t2)
  t1 = turn_into_array(t1)
  t2 = turn_into_array(t2)
  i = 0
  ts = [t1, t2].sort_by(&:size)
  biggest_t = ts.pop
  smallest_t = ts.pop
  limit = biggest_t.size
  while i < limit
      if biggest_t[i]
          biggest_t[i].val += smallest_t[i].val if smallest_t[i]
      else
          biggest_t[i] = smallest_t[i]
          break if i.zero?

          if i%2 == 0
              parent = i/2 - 1
              biggest_t[parent].right = biggest_t[i]
          else
              parent = (i + 1)/2 - 1
              biggest_t[parent].left = biggest_t[i]
          end
      end
      i += 1
  end
  biggest_t[0]
end

def turn_into_array(node)
  output = [node]
  queue = [node]
  while queue.size > 0
      object = queue[0]
      break unless object

      output.push(object.left, object.right) if object.left || object.right
      queue.push(object.left) if object.left
      queue.push(object.right) if object.right
      queue.shift
  end
  output
end