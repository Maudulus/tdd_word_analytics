require 'pry'
class Word

  def initialize(string)
    @string = string
    @characters = string.split("")
    @words = string.split(" ")
  end

  def word_count
    i = 0
    @words.each do |word|
      if word.match(/[a-zA-Z]/)
        i += 1
      end
    end
    i
  end

  def letter_count
    i = 0
    @characters.each do |character|
      if character.match(/[a-zA-Z]/)
        i += 1
      end
    end
    i
  end

  def symbol_count
    i = 0
    @characters.each do |character|
      if character.match(/[^a-zA-Z|\d|\s]/)
        i += 1
      end
    end
    i
  end

  def three_mc_words
    freq = @words.inject(Hash.new(0)) {|k,v| k[v] += 1; k }
    three_mcwords = (freq.sort_by{|k,v| -v}.first 3).flatten
    three_mcwords.keep_if{|word| word =~ /[a-zA-Z]/}
    three_mcwords.join(" ")
  end


  def three_mc_letters
    freq = @characters.inject(Hash.new(0)) {|k,v| k[v] += 1; k}
    three_mcletters = (freq.sort_by{|k,v| -v}.first 3).flatten
    three_mcletters.keep_if{|letter| letter =~ /[a-zA-Z]/}
    three_mcletters.join(" ")
  end

  def single_usage_words

  end

  def letters_not_used

  end






end




# Given a long string or set of paragraphs,
# perform some analysis that provides the following:

# Number of each word
# Number of each letter
# Number of each symbol (any non-letter and non-digit character,
#   excluding white space)
# Top three most common words
# Top three most common letters
# Noncore: Number of words only used once
# Noncore: All letters not used in the string
# Use TDD to drive the design of a WordAnalysis class. There should be an
# instance method defined for each of the bullets listed above.

# Do the work of identifying the desired data structure required to
# implement each method. Use tests to guide the design and construction
# of those data structures.

