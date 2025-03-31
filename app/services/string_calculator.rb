class StringCalculator
  def add(numbers)
    0 if numbers.blank?

    numbers.split(',').map(&:to_i).sum
  end
end
