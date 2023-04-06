class Phrase

  PUNCTUATION_REGEX = /!|@|&|\$|%|\^|:|\./
  QUOTES_TO_TRIM = /\A'|'\z/

  def initialize(string)
    @string = string
  end

  def word_count
    words = @string.split(/\s|,/)
    words.each_with_object({}) do |word, obj|
      word.downcase!
      word.strip!
      word.gsub!(PUNCTUATION_REGEX, "")
      word.gsub!(QUOTES_TO_TRIM, "")

      if !word.empty?
        if obj[word].nil?
          obj[word] = 1
        else
          obj[word] += 1
        end
      end
    end
  end
end
