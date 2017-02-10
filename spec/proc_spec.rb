require_relative '../lib/proc.rb'

RSpec.describe 'Proc' do
  describe "#say" do
    it 'returns a proc object' do
      expect(say.kind_of?(Proc)).to eq(true)
    end

    it 'doesn\'t error out if no argument is passed in' do
      expect{say.call}.not_to raise_error(ArgumentError)
    end

    it 'returns a proc object that accepts a string when called that returns "you entered + string"' do
      expect(say.call("Hello World!")).to eq("you entered Hello World!")
    end

  end
end
