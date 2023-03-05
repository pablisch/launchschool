# puts "Enter a word:"
# word = gets.chomp.strip
word = "word"
word_array = word.upcase.split("")
counter = 0
numbers = []

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

while counter < word_array.length
  points.each do |letter, score|
    puts "testing: #{word_array[counter]} against #{letter}"
    if letter.include?(word_array[counter]) == true
      numbers.push(score)
    end
  end
  counter += 1
end

puts "total is #{numbers.reduce(:+)}"