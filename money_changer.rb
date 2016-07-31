require 'rspec'

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] if given 1' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(1)).to eq([1])
    end
  end
end
