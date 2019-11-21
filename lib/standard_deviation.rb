ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation


# calculate the average

total1  = 0

ages.each do |age|
  total1 += age
end

average = (total1 / ages.size.to_f)

puts "the average of these numbers is #{average}"

# sum the square of the differences

total2  = 0

ages.each do |age|
  total2 += (age - average)**2
end

puts "the sum of the square of the differences is #{total2}"

sd = Math.sqrt(total2/(ages.size))

puts "the standard deviation is #{sd}"
