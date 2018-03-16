# frozen_string_literal: true

require 'spec_helper'
require_relative '../../arrays/binary_search'

describe 'Binary Search' do
  before do
    @list_a = [2, 4, 6, 8, 10, 12, 14]
    @list_b = [1, 10, 20, 47, 59, 63, 75, 88, 99, 107, 120, 133, 155, 162, 176, 188, 199, 200, 210, 222]
  end

  context 'when solving with recursion' do
    context 'and the number is not on the list' do
      it 'should return -1' do
        expect(BinarySearch.recursive(@list_a, 11, 0, @list_a.length-1)).to eq(-1)
        expect(BinarySearch.recursive(@list_b, 70, 0, @list_b.length-1)).to eq(-1)
      end
    end

    context 'and the number is on the list' do
      it 'should return its key' do
        expect(BinarySearch.recursive(@list_a, 14, 0, @list_a.length-1)).to eq(6)
        expect(BinarySearch.recursive(@list_b, 47, 0, @list_b.length-1)).to eq(3)
      end
    end
  end

  context 'when solving with iteration' do
    context 'and the number is not on the list' do
      it 'should return -1' do
        expect(BinarySearch.iterative(@list_a, 11)).to eq(-1)
        expect(BinarySearch.iterative(@list_b, 70)).to eq(-1)
      end
    end

    context 'and the number is on the list' do
      it 'should return its key' do
        expect(BinarySearch.iterative(@list_a, 14)).to eq(6)
        expect(BinarySearch.iterative(@list_b, 47)).to eq(3)
      end
    end
  end
end
