require_relative '../lib/rotate_left'
require_relative '../lib/exceptions'

RSpec.describe 'rotate left function' do
  context 'when rotating by a positive number' do
    it 'rotates the array correctly' do
      expect(rotate_left([1,2,3,4,5,6,7], 2)).to eq([3,4,5,6,7,1,2])
    end
  end

  context 'when rotating by zero positions' do
    it 'returns the array unchanged' do
      expect(rotate_left([1,2,3,4,5,6,7], 0)).to eq([1,2,3,4,5,6,7])
    end
  end

  context 'when rotating by more than the array length' do
    it 'wraps around and rotates the array' do
      expect(rotate_left([1,2,3,4,5,6,7], 8)).to eq([2,3,4,5,6,7,1])
    end
  end

  context 'when rotating by a negative number' do
    it 'raises an OnlyPositiveIntegers error' do
      expect { rotate_left([1, 2, 3, 4], -1) }.to raise_error(OnlyPositiveIntegers)
    end
  end

  context 'when rotating an array of length one' do
    it 'returns the array unchanged' do
      expect(rotate_left([4], 2)).to eq([4])
    end
  end

  context 'when rotating an empty array' do
    it 'returns an empty array' do
      expect(rotate_left([], 2)).to eq([])
    end
  end
end