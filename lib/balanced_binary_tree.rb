require './lib/shared/binary_tree'
require './lib/shared/node'

class BinaryTree
  def height(node)
    return 0 unless node
    1 + [self.height(node.left), self.height(node.right)].max
  end
  
  def balanced?
    return true unless self.root
    (0..1) === (self.height(self.root.left) - self.height(self.root.right)).abs
  end
end