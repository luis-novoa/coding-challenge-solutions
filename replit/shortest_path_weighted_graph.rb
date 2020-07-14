require 'set'

def shortest_path_wg(matrix)
  visited_nodes = Set.new
  output = [nil]*matrix.size
  output[0] = 0
  nodes_to_visit = [0]
  loop do
    node = nodes_to_visit[0]
    matrix[node].each_with_index do |e, i|
      next if e.zero?
      
      distance = output[node] + e
      output[i] = distance if output[i].nil?
      output[i] = distance if distance < output[i]
      nodes_to_visit.push(i) unless visited_nodes === i
    end
    visited_nodes << nodes_to_visit.shift
    break if nodes_to_visit.empty?
  end
  output
end