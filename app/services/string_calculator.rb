class StringCalculator
  def add(numbers)
    0 if numbers.blank?

    numbers = numbers.gsub("\\n", "\n")
    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
