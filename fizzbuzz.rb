require 'rspec'

class FizzBuzz
  def output(number)
    return 'FIZZBUZZ' if number % 15 == 0
    return 'BUZZ' if number % 5 == 0
    return 'FIZZ' if number % 3 == 0
    number
  end

  def run
    (1..100).each do |number|
      puts output(number)
    end
  end
end

fizzbuzz = FizzBuzz.new
fizzbuzz.run

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.output(2)).to eq(2)
    end

    it 'should return FIZZ if given 3' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.output(3)).to eq('FIZZ')
    end

    it 'should return BUZZ if given 5' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.output(5)).to eq('BUZZ')
    end

    it 'should return FIZZ if given 6' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.output(6)).to eq('FIZZ')
    end

    it 'should return BUZZ if given 10' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.output(10)).to eq('BUZZ')
    end

    it 'should return BUZZ if given 15' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.output(15)).to eq('FIZZBUZZ')
    end
  end
end
