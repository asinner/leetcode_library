class PlusOne
  def self.increment(digits)
    (digits.join('').to_i + 1).to_s.split('').map(&:to_i)
  end
end
