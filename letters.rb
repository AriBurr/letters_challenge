def letters_challenge
  puts "Please input a list of letters (ex. A, b, C, d)"
  convert_to_ascii(gets.strip)
end

def convert_to_ascii(string)
  arr = string.gsub(" ", "").split(",")
  puts arr.map { |letter| { "#{letter}" => letter.ord } }
  try_again
end

def try_again
  puts "Would you like to try again:\n[1] Yes\n[2] No"
  case gets.strip.to_i
    when 1
      letters_challenge
    when 2
      exit
  end
end

letters_challenge
