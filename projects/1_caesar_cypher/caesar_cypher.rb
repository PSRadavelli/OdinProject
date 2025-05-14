# frozen_string_literal: true

def prompt(message)
  print "#{message}: "
  gets.chomp
end

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

def run_caesar_cipher
  input = prompt('Insert the text to encrypt')
  shift = prompt('Insert the Caesar cipher shift (number)').to_i
  puts "Encrypted text: #{caesar_cipher(input, shift)}"
end

run_caesar_cipher
