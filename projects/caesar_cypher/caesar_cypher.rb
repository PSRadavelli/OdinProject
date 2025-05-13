# frozen_string_literal: true

def caesar_cipher(str, shift)
  str.chars.map do |char|
    base = case char
           when 'a'..'z' then 'a'
           when 'A'..'Z' then 'A'
           else next char
           end
    ((char.ord - base.ord + shift) % 26 + base.ord).chr
  end.join
end
