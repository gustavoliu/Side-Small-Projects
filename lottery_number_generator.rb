# Make a generator to try your luck at Mega-Sena, one of Brazil's most popular lottery options

# The results are picked twice every week - wednesdays and saturdays.
# Every week six numbers are chosen.

# You can play choosing from 6 to 15 numbers.

def run
  print `clear`
  4.times do puts "" end
  puts "-----------------------------------------------"
  puts "Welcome to the random lottery number generator!"
  puts "-----------------------------------------------"
  3.times do puts "" end
  puts "This system will choose numbers randomly between 1 and 60, so it will be easier for you to fill the lottery ticket."
  3.times do puts "" end

  loop do
    stop_conditions = ["EXIT", "QUIT", "Q", "EX"]
    show_options
    puts ""
    print ">>"
    input = gets.chomp.upcase
    if stop_conditions.include?(input)
      print `clear`
      3.times do puts "" end
      puts "Dear traveler, I wish you the best of luck."
      3.times do puts "" end
      break
    end
    check_input(input)
  end
end

def show_options
  puts "If you wish, please enter how many numbers you wish the system to pick for you (from 6 to 15):"
  puts " -- "
  puts "Oh, if you want to exit, type EXIT or QUIT."
end

def check_input(input)
  input_check = (6..15).to_a.map { |x| x.to_s }
  stop_conditions = ["EXIT", "QUIT", "Q", "EX"]
  if input_check.include?(input)
    sample_numbers(input.to_i)
  else
    print `clear`
    3.times do puts "" end
    puts "That input was invalid."
    3.times do puts "" end
  end
end

def sample_numbers(n)
  options = (1..60).to_a
  result = options.sample(n).sort
  print `clear`
  3.times do puts "" end
  puts "The numbers chosen are: #{result.to_s[1, result.to_s.length-2]}"
  puts ""
end

run
