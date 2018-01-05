def letters_challenge
  puts "Please input a list of letters (ex. A, b, C, d)"
  convert_to_ascii(gets.strip)
end

def convert_to_ascii(string)
  arr = string.gsub(" ", "").split(",")
  ascii_arr = arr.map { |letter| { "#{letter}" => letter.ord } }
  puts ascii_arr
  try_again(ascii_arr)
end

def sort_asc(arr)
  puts arr.sort_by(&:to_a)
end

def sort_desc(arr)
  puts arr.sort_by(&:to_a).reverse!
end

def try_again(arr)
  puts "Would you like to try new numbers:\n[1] Yes\n[2] Sort ASC\n[3] Sort DESC\n[4] Quit"
  case gets.strip.to_i
    when 1
      letters_challenge
    when 2
      sort_asc(arr)
    when 3
      sort_desc(arr)
    when 4
      exit
  end
  try_again(arr)
end

letters_challenge
