# puts "Enter a word:"
# word = gets.chomp.strip
word = "word"
word_array = word.split("")
counter = 0
numbers = []

puts numbers

points = {
  # nil => 0,
  ["E", "A", "I", "O", "N", "R", "T", "L", "S", "U"] => 1,
  ["D", "G"] => 2,
  ["B", "C", "M", "P"] => 3,
  ["F", "H", "V", "W", "Y"] => 4,
  ["K"] => 5,
  ["J", "X"] => 8,
  ["Q", "Z"] => 10
}

=begin
[w,o,r,d]
[4, 1, 1, 2]
reduce(:+)

[k]
[5]
=end

while counter < word_array.length
  points.each do |letters, score|
    if letters.include?(word_array[counter]) == true
      numbers.push(score)
    end
  end
  counter += 1
end

puts numbers.reduce(:+)