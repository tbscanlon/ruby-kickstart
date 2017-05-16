# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    a = self.split("")
    return_a = []

    a.each_index {|x| return_a.push(a[x]) if x.even?}
    return_a.join("")
  end
end
