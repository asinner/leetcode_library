class CountAndSay
  def self.sequence_at(sequence_number, seed)
    return unless sequence_number
    sequence = seed
    (sequence_number - 1).times do
      sequence = self.sequence(sequence)
    end
    sequence.to_i
  end

  def self.sequence(n)
    digits = n.to_s.split('')
    format(group_digits(digits))
  end

  def self.group_digits(digits)
    groups, ptr = [], 0
    digits.each do |i|
      (groups[ptr].push(i) && next) if groups[ptr] && groups[ptr][0] == i
      ptr += 1 if groups[ptr]
      groups.push([i])
    end
    groups
  end

  def self.format(groups)
    result = ''
    groups.each { |g| result += "#{g.count}#{g[0]}" }
    result.to_i
  end
end
