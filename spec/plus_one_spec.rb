require 'spec_helper'
require './lib/plus_one'

describe PlusOne do
  context '.increment' do
    it 'returns an [1, 2, 3] for [1, 2, 2]' do
      expect(PlusOne.increment([1,2,2])).to eq([1,2,3])
    end
    
    it 'returns an [1, 0, 0] for [9, 9]' do
      expect(PlusOne.increment([9,9])).to eq([1,0,0])
    end
    
    it 'returns an [1, 1, 0] for [1, 0, 9]' do
      expect(PlusOne.increment([1,0,9])).to eq([1,1,0])
    end
  end
end