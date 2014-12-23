class BinaryTree
  attr_accessor :root
  
  def insert(node, c = nil)
    return self.root = node unless self.root
    c ||= self.root
    if node.value > c.value
      c.right.nil? ? c.right = node : self.insert(node, c.right)
    else
      c.left.nil? ? c.left = node : self.insert(node, c.left)
    end
  end
end