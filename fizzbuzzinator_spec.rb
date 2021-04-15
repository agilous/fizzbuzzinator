require 'pry'
require 'rspec'
require './fizzbuzzinator'

RSpec.describe Fizzbuzzinator, type: :model do
  let(:fizz) { 'Fizz' }
  let(:buzz) { 'Buzz' }
  let(:fizzbuzz) { 'Fizzbuzz' }

  it 'produces the expected result' do
    expected_result = [
      1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz, 11, fizz, fizz, 14, fizzbuzz,
      16, 17, fizz, 19, buzz, fizz, 22, fizz, fizz, buzz
    ]

    result = (1..25).map do |number|
      Fizzbuzzinator.fizzbuzzinate(number)
    end

    expect(result).to eq(expected_result)
  end

  context 'A fizz is when' do
    it 'the number is divisible by 3' do
      expect(Fizzbuzzinator.fizzbuzzinate(3)).to eq(fizz)
    end

    it 'or contains the digit 3' do
      expect(Fizzbuzzinator.fizzbuzzinate(13)).to eq(fizz)
    end
  end

  context 'A buzz is when' do
    it 'the number is divisible by 5' do
      expect(Fizzbuzzinator.fizzbuzzinate(5)).to eq(buzz)
    end

    it 'or contains the digit 5`' do
      expect(Fizzbuzzinator.fizzbuzzinate(59)).to eq(buzz)
    end
  end

  context 'A Fizzbuzz is when' do
    it 'the number is divisible by 3 & 5' do
      expect(Fizzbuzzinator.fizzbuzzinate(15)).to eq(fizzbuzz)
    end
  end

  context 'Otherwise' do
    let(:number) { 1 }
    it 'it\'s just the number' do
      expect(Fizzbuzzinator.fizzbuzzinate(number)).to eq(number)
    end
  end
end
