# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(sentence)
  # sentence = sentence.delete('!@$#%^&*()-=_+[]:;,./<>?\\|').split(" ")
  return_a = Array.new

  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each {|regex| sentence = sentence.gsub(regex, ' ')}

  a = sentence.split(" ")

  a.each_index {|x| return_a.push a[x] if x.even?}
  return_a
end
