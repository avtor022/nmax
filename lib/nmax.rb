require "nmax/version"

module Nmax

  def self.show_numbers
    # incoming data
    number_of_numbers = ARGV.shift.to_i
    data = ARGF
    # get and sort numbers
    numbers = []
    data.each_line do |line|
      if matches = line.scan(/\d{1,1000}/)
        matches.each do |match|
          number = match.to_i
          numbers << number if numbers.empty?
          next if numbers.include?(number)
          if numbers.length < number_of_numbers
            numbers << number
          else
            numbers << number
            numbers.delete(numbers.min)
          end
        end
      end
    end
    puts(numbers.sort.reverse)
  end

end
