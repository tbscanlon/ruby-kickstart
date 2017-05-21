# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access (spiral_array, &block)
  r_array = unravel(spiral_array)
  r_array.map(&block)
end

def unravel(spiral_array)
  r_array = []
  while spiral_array.length > 0
    # right
    spiral_array[0].each { |x| r_array.push x }
    spiral_array.delete_at 0

    #down
    spiral_array.length.times { |x| r_array.push(spiral_array[x][spiral_array[0].length - 1]) }
    spiral_array.each { |x| x.delete_at(x.length-1) }

    #left
    break if spiral_array.length == 0
    spiral_array[spiral_array.length - 1].reverse.each { |x| r_array.push x }
    spiral_array.delete_at(spiral_array.length - 1)

    #up
    spiral_array.length.times.reverse_each { |x| r_array.push(spiral_array[x][0]) }
    spiral_array.each { |x| x.delete_at 0 }
  end
  r_array
end
