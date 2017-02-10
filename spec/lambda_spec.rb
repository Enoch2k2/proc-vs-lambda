require_relative '../lib/lambda.rb'

RSpec.describe 'Lambda' do
  describe '#add' do
    it 'returns a lambda object that adds 2 to a number passed in' do
      result = add
      expect(add.call(2)).to eq(4)
    end
  end
end
