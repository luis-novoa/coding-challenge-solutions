def max_depth(root, depth = 0)
  return depth if root.nil?
  
  left = max_depth(root.left, depth + 1)
  right = max_depth(root.right, depth + 1)
  
  if left > right
      return left
  else
      return right
  end
end