require "nmax/version"

module Nmax
  def self.run
    number_of_numbers = ARGV.shift.to_i
    data = ARGF
    puts self.show_numbers(number_of_numbers, data)
  end

  def self.show_numbers(n, data)
    numbers = []
    data.each_line do |line|
      if matches = line.scan(/\d{1,1000}/)
        matches.each do |match|
          number = match.to_i
          numbers << number
        end
      end
    end
    numbers.sort.reverse[0..n-1]
  end

end
