# frozen_string_literal: true

def substrings(sentence, dictionary)
  sentence = sentence.downcase
  result = Hash.new(0)

  dictionary.each do |value|
    count = sentence.scan(value).count
    result[value] += count if count.positive?
  end

  p result
end
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
