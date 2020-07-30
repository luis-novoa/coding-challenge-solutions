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
  output = []
  i = 0
  limit = [t1.size, t2.size].max
  while i < limit
      t1[i] ? t1_val = t1[i].val : t1_val = nil
      t2[i] ? t2_val = t2[i].val : t2_val = nil
      result = [t1_val, t2_val].compact
      result.size.zero? ? output[i] = nil : output.push(TreeNode.new(result.sum))
      i += 1
  end
  output[0]
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

  # while i < limit
  #     t1[i] ? t1_val = t1[i].val : t1_val = nil
  #     t2[i] ? t2_val = t2[i].val : t2_val = nil
  #     result = [t1_val, t2_val].compact
  #     result.size.zero? ? output[i] = nil : output.push(TreeNode.new(result.sum))
  #     i += 1
  # end
  # i -= 1
  # while i > 0
  #     if i%2 == 0
  #         parent = i/2 - 1
  #         output[parent].right = output[i]
  #     else
  #         parent = (i + 1)/2 - 1
  #         output[parent].left = output[i]
  #     end
  #     i -= 1
  # end