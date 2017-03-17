# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

def mutation?(base_word, mutation)
  first_word_hash = Hash.new(0)
  second_word_hash = Hash.new(0)

  base_word.each_char do |char|
    first_word_hash[char] += 1
  end

  mutation.each_char do |char|
    second_word_hash[char] += 1
  end

  second_word_hash.each do |char, appearances|
    return false if appearances > first_word_hash[char]
  end
  true
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")
puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end