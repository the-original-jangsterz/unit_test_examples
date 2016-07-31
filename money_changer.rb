require 'rspec'

class ChangeMachine
  def change(cents)
    coins = []
    while cents > 0
      if cents >= 25
        cents -= 25
        coins << 25
      elsif cents >= 10
        cents -= 10
        coins << 10
      elsif cents >= 5
        cents -= 5
        coins << 5
      else
        cents -= 1
        coins << 1
      end
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

    it 'should return [5] if given 5' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(5)).to eq([5])
    end

    it 'should return [10] if given 10' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(10)).to eq([10])
    end

    it 'should return [25] if given 25' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(25)).to eq([25])
    end
  end
end
