require "nmax/version"

module Nmax
  def self.run
    number_of_numbers = ARGV.shift.to_i
    data = ARGF
    puts self.show_numbers(number_of_numbers, data)
  end

  def self.show_numbers(n, data)
    # default n is 5
    n = 5 if n == 0
    if n.is_a? Integer
      numbers = data.read.scan(/\d{1,1000}/).map(&:to_i)
      numbers == [] ? message = "No numbers!" : numbers.max(n)
    else
      "Error: parameter 'number' must be Integer!"
    end
  end

end
