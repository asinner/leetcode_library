require './lib/shared/binary_tree'
require './lib/shared/node'

class BinaryTree
  def height(node)
    return 0 unless node
    1 + [height(node.left), height(node.right)].max
  end

  def balanced?
    return true unless root
    (0..1) === (height(root.left) - height(root.right)).abs
  end
end
