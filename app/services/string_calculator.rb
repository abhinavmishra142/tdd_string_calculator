class StringCalculator
  def add(numbers)
    0 if numbers.blank?

    numbers = numbers.gsub("\\n", "\n")
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers.split(/#{delimiter}/).map(&:to_i).sum
    else
      numbers.split(/,|\n/).map(&:to_i).sum
    end
  end
end
