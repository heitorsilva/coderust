# frozen_string_literal: true

require 'spec_helper'
require_relative '../../arrays/binary_search'

describe 'Binary Search' do
  context 'when solving with recursion' do
    context 'and the number is not on the list' do
      it 'should return -1' do
        list = [2, 4, 6, 8, 10, 12, 14]
        expect(BinarySearch.recursive(list, 11, 0, list.length-1)).to eq(-1)
      end
    end

    context 'and the number is on the list' do
      it 'should return its key' do
        list = [2, 4, 6, 8, 10, 12, 14]
        expect(BinarySearch.recursive(list, 14, 0, list.length-1)).to eq(6)
      end
    end
  end

  context 'when solving with iteration' do
    context 'and the number is not on the list' do
      it 'should return -1' do
        list = [2, 4, 6, 8, 10, 12, 14]
        expect(BinarySearch.iterative(list, 11)).to eq(-1)
      end
    end

    context 'and the number is on the list' do
      it 'should return its key' do
        list = [2, 4, 6, 8, 10, 12, 14]
        expect(BinarySearch.iterative(list, 14)).to eq(6)
      end
    end
  end
end
