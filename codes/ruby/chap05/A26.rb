require 'prime'
q = gets.to_i
x = Array.new(q) { gets.to_i }
x.each { |num| puts num.prime? ? 'Yes' : 'No' }
