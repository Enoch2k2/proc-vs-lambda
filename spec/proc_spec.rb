require_relative '../lib/proc.rb'

RSpec.describe 'Proc' do
  describe "#say" do
    it 'returns a proc object that accepts a string when called that returns "you entered + string"' do
      expect(say.call("Hello World!")).to eq("you entered Hello World!")
    end
  end
end
