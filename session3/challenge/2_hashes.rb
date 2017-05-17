# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
  r_hash = Hash.new([])

  num.times do |n|
    n += 1
    r_hash[n] = [] if n.odd?
  end

  r_hash.each do |k, v|
    a =[]
    1.upto(k) { |x| a.push(x) if x.even? && x < k}
    r_hash[k] = a
  end

  r_hash
end
