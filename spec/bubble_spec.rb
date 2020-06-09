require 'spec_helper'
require './src/bubble_sort'

describe 'bubble_sort' do
  it 'should sort numbers' do
    arr = [4, 5, -1, 2, 55, 3, 20, -10, 100]
    expected = [-10, -1, 2, 3, 4, 5, 20, 55, 100]
    expect(bubble_sort(arr)).to eql(expected)
  end

  it 'should sort strings' do
    arr = %w[Ben Paul Alex]
    expected = %w[Alex Ben Paul]
    expect(bubble_sort(arr)).to eql(expected)
  end
end

describe 'bubble_sort_by' do
  it 'should sort numbers when provided a block' do
    arr = [6, 5, 4, 3, -1, 2, 10]
    expected = [-1, 2, 3, 4, 5, 6, 10]
    expect(bubble_sort_by(arr) { |x, y| x <=> y }).to eql(expected)
  end
end
