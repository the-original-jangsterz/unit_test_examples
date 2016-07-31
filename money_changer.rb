require 'rspec'

class ChangeMachine
  def change(cents)
    coins = []
    while cents > 0
      cents -= 1
      coins << 1
    end
    coins
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] if given 1' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] if given 2' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(2)).to eq([1, 1])
    end
  end
end
