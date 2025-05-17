# frozen_string_literal: true

## My implementation on substrings exercises of the odin project comparing two arrays;
require 'highline/import'

def substrings(phrase, dictionary)
  phrase = phrase.gsub(/\W/, ' ').downcase.split(' ')
  result = Hash.new(0)
  phrase.each do |value|
    result[value] += 1 if dictionary.include?(value)
  end
  p result
end
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings(ask('Enter a phrase or word to be counted by a set dictionary'), dictionary)
