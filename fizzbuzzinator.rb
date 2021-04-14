class Fizzbuzzinator
  def self.fizzbuzzinate(num)
    @@number = num.to_i

    if fizz? && buzz?
      'Fizzbuzz'
    elsif fizz?
      'Fizz'
    elsif buzz?
      'Buzz'
    else
      number
    end
  end

  private

  class << self
    def buzz?
      contains?(5) || divisible_by?(5)
    end

    def contains?(num)
      number.to_s.split('').any? { |char| char.eql?(num.to_s) }
    end

    def divisible_by?(num)
      number % num.to_i == 0
    end

    def fizz?
      contains?(3) || divisible_by?(3)
    end

    def fizzbuzz?
      divisible_by?(15)
    end

    def number
      @@number
    end
  end
end
