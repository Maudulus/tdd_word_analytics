require 'rspec'
require_relative 'word_class'
require 'pry'


describe 'Word' do
  let(:word_example) { Word.new("Hello my name is john the baptist ") }
  let(:word_example1) {Word.new("Hiya, I'm maximus the; 7383 destroyer")}
   let(:word_example2) {Word.new("This is a word, 893 is not 123123 a word, but asd&e is despite the symbol.")}
   let(:common_words) {Word.new("common common words words words are printed printed printed printed if if if if if if the the the the the the three three most common")}
   let(:common_words1) {Word.new("common #$ common words words*(#) words are printed 5092348 printed printed printed if if if if if if the ^*@) the the 809834 the the the three three most common.")}
   let(:common_letters) {Word.new("zzzzzzzzzzzaa zzzzbn ccdqqqqed ffghrrrrrrrrrrrrril zzzzzzzzz qqqqqqqq")}
   let(:common_letters1) {Word.new("ardvarkkk")}

  it "tests if the word count is working on a string" do
    expect(word_example.word_count).to eq(7)
  end

  it "tests if the word count is working on a confusing string" do
    expect(word_example1.word_count).to eq(5)
  end

  it "tests if the word count is working on a string with symbols, but not on numbers" do
    expect(word_example2.word_count).to eq(14)
  end

  it "tests if the letter count is working on a normal string" do
    expect(word_example.letter_count).to eq(27)
  end
  #binding.pry
  it "tests if the letter count is working on a string with all sorts of symbols and numbers" do
    expect(word_example1.letter_count).to eq(25)
  end

   it "tests if the letter count is working on another string with all sorts of symbols and numbers" do
    expect(word_example2.letter_count).to eq(46)
  end

  it "tests if the symbol count is working on a string with numbers and letters and whitespace included" do
     expect(word_example1.symbol_count).to eq(3)
   end

   it "tests if the symbol count is working on a string with numbers and letters and whitespace included" do
     expect(word_example2.symbol_count).to eq(4)
   end

   it "tests if the three most common words are selected from a string and printed" do
    expect(common_words.three_mc_words).to eq("if the printed")
  end

  it "tests if the three most common words are selected from a string with numbers and symbols and printed" do
    expect(common_words1.three_mc_words).to eq("if the printed")
  end

  it "tests if the three most common letters are selected from a string" do
    expect(common_letters.three_mc_letters).to eq("z r q")
  end

    it "tests if the three most common letters are selected from a string" do
    expect(common_letters1.three_mc_letters).to eq("k r a")
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
