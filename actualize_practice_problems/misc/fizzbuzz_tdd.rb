require 'rspec'

class FizzBuzz
  def output(n)
    if n % 15 == 0
      return 'fizzbuzz'
    elsif n % 3 == 0
      return 'fizz'
    elsif n % 5 == 0
      return 'buzz'
    else
      return n
    end
  end
end

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 when given 1' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(1)
      expect(result).to eq(1)
    end
    it 'should return 2 when given 2' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(2)
      expect(result).to eq(2)
    end
    it 'should return fizz when given 3' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(3)
      expect(result).to eq('fizz')
    end
    it 'should return 4 when given 4' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(4)
      expect(result).to eq(4)
    end
    it 'should return buzz when given 5' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(5)
      expect(result).to eq('buzz')
    end
    it 'should return fizz when given 6' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(6)
      expect(result).to eq('fizz')
    end
    it 'should return buzz when given 10' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(10)
      expect(result).to eq('buzz')
    end
    it 'should return fizzbuzz when given 15' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(15)
      expect(result).to eq('fizzbuzz')
    end
    it 'should return fizzbuzz when given 30' do
      # skip
      fb = FizzBuzz.new
      result = fb.output(30)
      expect(result).to eq('fizzbuzz')
    end
  end
end