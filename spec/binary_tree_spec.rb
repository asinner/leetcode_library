require 'spec_helper'
require './lib/shared/binary_tree'
require './lib/shared/node'

describe BinaryTree do
  let (:bt) { BinaryTree.new }
  let (:n1) { Node.new(1) }
  let (:n2) { Node.new(2) }
  let (:n3) { Node.new(3) }
  let (:n4) { Node.new(4) }
  
  context '#insert' do
    context 'with no root' do
      it 'inserts a node at the root' do
        bt.insert(n1)
        expect(bt.root).to be(n1)
      end
    end
    
    context 'with a root' do
      it 'inserts a lesser value to root left' do
        bt.insert(n3)
        bt.insert(n2)
        bt.insert(n1)
        expect(bt.root.left.left).to be(n1)
      end
      
      it 'inserts a greater value to root right' do
        bt.insert(n2)
        bt.insert(n3)
        bt.insert(n4)
        expect(bt.root.right.right).to be(n4)
      end
    end
  end  
end