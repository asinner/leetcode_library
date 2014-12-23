class BinaryTree
  attr_accessor :root

  def insert(node, c = nil)
    return self.root = node unless root
    c ||= root
    if node.value > c.value
      c.right.nil? ? c.right = node : insert(node, c.right)
    else
      c.left.nil? ? c.left = node : insert(node, c.left)
    end
  end
end
