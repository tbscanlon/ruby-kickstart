# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)


def pathify(path=Hash.new)
  return path.map { |pth| "/#{pth}" } if path.is_a? Array # when input is just an array

  r_array = []
  path.each do |k, v|
    parent = "/#{k}"
    child = pathify(v)
    child.each { |child| r_array << (parent + child) }
  end
  r_array
end
#   path.each do |k, v|
#     r_array = []
#     # if is a hash?
#     if path.is_a? Hash
#       # go DEEPER
#       pathify(path[v])
#       puts "going DEEPER"
#     # if is an array?
#     else
#       r_array.pop("/#{v[0]}")
#       puts "popping array contents to array"
#       # pop contents to array
#     end
#     r_array.pop("/#{v}")
#     "popping hash to array"
#   end
#   r_array
# end

# {"home" => {"tom" => ["Documents"]}}
# hash = folder
# array = file
