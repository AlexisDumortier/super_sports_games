ages = [24, 30, 18, 20, 41]

# step 1 - sum all the integers

total  = 0
ages.each do |age|
  total += age
end

# step 2 - find the number of integers in the input array

num_element = ages.size

# step 3 - divide the sum of the integers (step 1) by the number of integers (step 2). This is the average (also known as the mean).

average = (total / num_element.to_f)

# step 4 - subtract each integer by the average found in step 3

diff_mean_average  = []

ages.each do |age|
  diff_mean_average << (age - average)
end

# step 5 - Take the result from step 4 and square each number

squares =[]

diff_mean_average.each do |num|
  squares << (num - average)
end

# step 6 - sum all the numbers from step 5

total_squares  = 0
squares.each do |square|
  total_squares += square
end

# step 7 - divide the result from step 6 by the number of integers (step 2)

temp = total_squares / num_element

# step 8 - divide the result from step 6 by the number of integers (step 2)

sd = Math.sqrt(temp)
