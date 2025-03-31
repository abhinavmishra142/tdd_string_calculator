class StringCalculator
  def add(numbers)
    0 if numbers.blank?

    numbers = numbers.to_s.gsub("\\n", "\n")
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers = numbers.split(/#{delimiter}/).map(&:to_i)
    else
      numbers = numbers.split(/,|\n/).map(&:to_i)
    end

    negative_numbers = numbers.select { |number| number < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(', ')}" unless negative_numbers.empty?

    numbers.sum
  end
end
