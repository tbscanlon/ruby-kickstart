# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  a = string.split("")
  return_string = Array.new

  a.length.times do |x|
    if return_odds
      next if x % 2 == 0
      return_string.push(a[x])
    else
      next if x % 2 != 0
      return_string.push(a[x])
    end
  end
  return_string.join("")
end
