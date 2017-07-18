require 'spec_helper'

unless Enumerable.method_defined? :take_last_while
  describe 'Enumerable#take_last_while' do
    it 'takes the last elements while a pred is true' do
      expect([1, 2, 3, 4, 6].take_last_while(&:even?)).to eq([4, 6])
    end
  end
end
