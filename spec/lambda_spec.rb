require_relative '../lib/lambda.rb'
require 'pry'
RSpec.describe 'Lambda' do
  describe '#add' do
    it 'should return a lambda object' do
      result = add
      expect(result.kind_of?(Proc)).to eq(true)
    end

    it 'adds 2 to a number passed in' do
      result = add
      expect(add.call(2)).to eq(4)
    end

    it 'errors out if lambda object does not pass in number' do
      expect{add.call}.to raise_error(ArgumentError)
    end
  end

  describe '#subtract_by' do
    it 'should return a lambda object' do
      result = subtract_by(3)
      expect(result.kind_of?(Proc)).to eq(true)
    end

    it 'accepts a number as an argument and returns a lambda object, that when called takes in a number to subtract by' do
      result = subtract_by(3)
      expect(result.call(2)).to eq(1)
    end

    it 'errors out if lambda object does not pass in number' do
      result = subtract_by(3)
      expect{result.call}.to raise_error(ArgumentError)
    end
  end

  describe '#divide_by' do
    it 'should accept lambda object as an argument' do
      expect{divide_by(lambda{|x| x / 5})}.to_not raise_error(ArgumentError) 
    end
  end
end
