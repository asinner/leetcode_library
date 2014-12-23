require 'spec_helper'
require './lib/count_and_say'

describe CountAndSay do
  context '#sequence' do
    it 'returns 1 for for 1' do
      expect(CountAndSay.sequence(1)).to eq(11)
    end

    it 'returns 11 for for 2' do
      expect(CountAndSay.sequence(11)).to eq(21)
    end

    it 'returns 1211 for for 21' do
      expect(CountAndSay.sequence(21)).to eq(1211)
    end
  end

  context '#sequence_at' do
    context 'seed of 1' do
      it 'returns 1 for sequence 1 of seed 1' do
        expect(CountAndSay.sequence_at(1, 1)).to eq(1)
      end

      it 'returns 11 for sequence 2 of seed 1' do
        expect(CountAndSay.sequence_at(2, 1)).to eq(11)
      end

      it 'returns 21 for sequence 3 of seed 1' do
        expect(CountAndSay.sequence_at(3, 1)).to eq(21)
      end
    end

    context 'seed of 2' do
      it 'returns 2 for sequence 1 of seed 2' do
        expect(CountAndSay.sequence_at(1, 2)).to eq(2)
      end

      it 'returns 12 for sequence 2 of seed 2' do
        expect(CountAndSay.sequence_at(2, 2)).to eq(12)
      end

      it 'returns 1112 for sequence 3 of seed 2' do
        expect(CountAndSay.sequence_at(3, 2)).to eq(1112)
      end
    end
  end

  context '#group_digits' do
    it 'returns an array of grouped digits in arrays' do
      digits = %w(1 1 2 3 3 1)
      groups = [%w(1 1), ['2'], %w(3 3), ['1']]
      expect(CountAndSay.group_digits(digits)).to eq(groups)
    end
  end

  context '#count_digit_groups' do
    it 'returns an integer containing all group numbers' do
      groups = [%w(1 1), ['2'], %w(3 3), ['1']]
      expect(CountAndSay.format(groups)).to eq(21_122_311)
    end
  end
end
