require "nmax/version"

module Nmax
  def self.run
    number_of_numbers = ARGV.shift.to_i
    data = ARGF
    puts self.show_numbers(number_of_numbers, data)
  end

  def self.show_numbers(n = 5, data)
    if n.is_a? Integer
      numbers = []
      data.each_line do |line|
        if matches = line.scan(/\d{1,1000}/)
          matches.each do |match|
            number = match.to_i
            numbers << number
          end
        end
      end
      if numbers == []
        message = "No numbers!"
      else
        numbers.max(n)
      end
    else
      message = "Error: parameter 'number' must be Integer!"
    end
  end

end
