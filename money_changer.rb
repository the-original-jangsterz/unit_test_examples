require 'rspec'

class ChangeMachine
  def change(cents)
    denominations = [25, 10, 5, 1]
    coins = []
    while cents > 0
      denominations.each do |denomination|
        if cents >= denomination
          cents -= denomination
          coins << denomination
          break
        end
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

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119' do
      change_machine = ChangeMachine.new
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
