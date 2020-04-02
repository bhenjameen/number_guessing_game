=begin
Ruby Number Guessing Game written by Benjamin Patrick, EYOH (Bhenjameen) 
=end

puts ("\n" * 5)
puts "Welcome to Number Guessing Game"
puts ("\n" * 2)
puts "..."
print "Enter your name: "
name = gets.chomp

puts 
    ("\n")
    sleep 1.0
puts
puts "..."
puts "Hello #{name}"
puts "Choose your difficulty level"
puts 
    sleep 1.0
puts "..."
puts "easy:    (Guess between 1 and 10 with 6 guesses)"
puts "medium:  (Guess between 1 and 20 with 4 guesses)"
puts "hard:    (Guess between 1 and 50 with 3 guesses)"
puts 
    sleep 1.0
puts "..."
puts "Type your level and press 'ENTER' to continue\n\n\n\n"
level = gets.chomp
puts 
    ("\n")
    sleep 1.0
puts
puts "..."
puts "You chose #{level} level"
puts 
    ("\n")
    sleep 1.0
puts
puts "..."


max_tries = case level
when "hard" then 3
when "medium" then 4
else 6
end
puts "You have #{max_tries} guesses"


min = 1
max = case level
    when "hard" then 50
    when "medium" then 20
    else 10
end

magic_number = rand(max)+1

guess = 0
tries = 0

until guess == magic_number || tries == max_tries
puts "The magic number is between #{min} and #{max}.\n\n"
puts ("\n")
puts "..."
print "What is your guess?:   "

begin
	guess = gets.chomp
	guess = Integer(guess)
rescue ArgumentError
	puts ("\n" * 2)
	puts "..."
	puts "This is not a number. Numbers are required"
    sleep 1.0
	puts "..."
	print "Guess a number between #{min} and #{max}:  "
    retry
end

if guess != magic_number
        puts ("\n" * 2)
        puts "..."
            sleep 1.0
        puts "That was wrong"
    elsif guess == magic_number
        puts
            sleep 1.0 
        puts
        puts "\a"
        puts "..."
        puts "You got it right!"
        print "*****Congratulations #{name}*****"
    break
end

puts
tries += 1 
until_limit = max_tries - tries
puts "You have #{until_limit} out of #{max_tries} guesses left."
if tries == max_tries
    puts
    3.times do 
    print "Game over!"
    puts 
    end
    puts "You lose."
    end
end