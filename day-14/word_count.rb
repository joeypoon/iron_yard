#
# # get downcased words, ignores all punctuation
# #    http://www.rubular.com/r/omNepEJMiq
# words = text.downcase.split(/\W+/)
#
# excluded_words = %w( that the to a and can of here have it in is not)
# ```
#
# Hint: use a hash for each word, or use `group_by`
#
# (1..6).group_by {|i| i%3}   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}

text = File.read './gettysburg.txt'

class String

  def word_count
    words = self.downcase.split(/\W+/)
    common_words = ["the", "a", "it", "is", "for", "in", "to", "are", "by", "from", "be", "and", "on", "this", "or", "so", "of", "as", "that", "have"]

    words = words.reject { |word| common_words.include? word }

    counts = words.group_by { |word| word }

    counts = counts.sort_by { |key, value| value.count }.reverse.take(5)

    counts.each { |key, value| puts "#{key.capitalize}: #{value.count}" }

  end
end

text.word_count
