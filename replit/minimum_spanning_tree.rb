require 'set'

def minimum_spanning_tree(matrix)
  # write your code here
  output = []
  smallest_link = Hash.new
  all_nodes = (0...matrix.size).to_set
  reached_nodes = Set.new
  node = 0
  loop do
    node_min = matrix[node].reject { |e| e.zero? }.min
    break if reached_nodes == all_nodes
  end
end

p minimum_spanning_tree([[0, 4, 1, 4, 0, 0, 0, 0, 0, 0], [4, 0, 5, 0, 9, 9, 0, 7, 0, 0], [1, 5, 0, 3, 0, 0, 0, 9, 0, 0], [4, 0, 3, 0, 0, 0, 0, 10, 0, 18], [0, 9, 0, 0, 0, 2, 4, 0, 6, 0], [0, 9, 0, 0, 2, 0, 2, 8, 0, 0], [0, 0, 0, 0, 4, 2, 0, 9, 3, 9], [0, 7, 9, 10, 0, 8, 9, 0, 0, 8], [0, 0, 0, 0, 6, 0, 3, 0, 0, 9], [0, 0, 0, 18, 0, 0, 9, 8, 9, 0]])
# => [1, 3, 4, 7, 8, 2, 2, 3, 8]

p minimum_spanning_tree([[0, 0, 1, 3, 0, 0], [0, 0, 0, 5, 0, 0], [1, 0, 0, 2, 1, 4], [3, 5, 2, 0, 7, 0], [0, 0, 1, 7, 0, 2], [0, 0, 4, 0, 2, 0]])
# => [1, 1, 2, 2, 5]