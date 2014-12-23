require 'spec_helper'
require './lib/balanced_binary_tree'

describe BinaryTree do
  let(:bt) { BinaryTree.new }
  let(:n1) { Node.new(1) }
  let(:n2) { Node.new(2) }
  let(:n3) { Node.new(3) }
  let(:n4) { Node.new(4) }
  let(:n5) { Node.new(5) }

  context '#height' do
    context 'with no nodes' do
      it { expect(bt.height(bt.root)).to eq(0) }
    end

    context 'with no nodes' do
      before do
        bt.insert(n3)
      end
      it { expect(bt.height(bt.root)).to eq(1) }
    end

    context 'with 2 nodes on the left and 2 on right' do
      before do
        bt.insert(n3)
        bt.insert(n2)
        bt.insert(n1)
        bt.insert(n4)
        bt.insert(n5)
      end
      it { expect(bt.height(bt.root)).to eq(3) }
    end

    context 'with 4 nodes on the left and 1 on right' do
      before do
        bt.insert(n4)
        bt.insert(n3)
        bt.insert(n2)
        bt.insert(n1)
        bt.insert(n5)
      end
      it { expect(bt.height(bt.root)).to eq(4) }
    end
  end

  context '#balanced?' do
    context 'with no nodes' do
      it { expect(bt.balanced?).to be(true) }
    end

    context 'with root node' do
      before do
        bt.insert(n1)
      end

      it { expect(bt.balanced?).to be(true) }
    end

    context 'with 2 right nodes' do
      before do
        bt.insert(n1)
        bt.insert(n2)
        bt.insert(n3)
      end

      it { expect(bt.balanced?).to be(false) }
    end

    context 'with 2 left nodes' do
      before do
        bt.insert(n3)
        bt.insert(n2)
        bt.insert(n1)
      end

      it { expect(bt.balanced?).to be(false) }
    end
  end
end
