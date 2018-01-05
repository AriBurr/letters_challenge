def letters_challenge
  puts "Please input a list of letters (ex. A, b, C, d)"
  string = gets.strip
  convert_to_ascii(string)
end

def convert_to_ascii(string)
  strArr = string.gsub(" ", "").split(",")
  asciiArr = []

  strArr.map do |letter|
    ascii = Hash.new
    ascii["#{letter}"] = letter.ord
    asciiArr.push(ascii)
  end

  puts asciiArr

end

letters_challenge
