def invert_tree(root)
  return root if root.nil? || (root.left.nil? && root.right.nil?)
  
  left = invert_tree(root.left)
  right = invert_tree(root.right)
  root.right = left
  root.left = right
  root
end