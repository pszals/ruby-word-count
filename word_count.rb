=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    words = @string.split(" ")
    words.each_with_object({}) do |word, obj|
      if obj[word].nil?
        obj[word] = 1
      elsif
        obj[word] += 1
      end
    end
  end
end
