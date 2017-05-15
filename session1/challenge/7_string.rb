# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  a = string.split("")
  return_string = Array.new

  a.length.times { |x|     return_string.push(a[x + 1]) if a[x] == "r" || a[x] == "R" }

  return_string.join("")
end
