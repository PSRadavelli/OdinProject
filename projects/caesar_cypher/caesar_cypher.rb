# frozen_string_literal: true

def caesar_cypher
  puts 'insert the text'
  user_text_input = gets.chomp
  puts 'now insert the key to use in the cryptography'
  cypher_index = gets.chomp.to_i
  cypher_array = user_text_input.downcase.codepoints.collect { |value| value + cypher_index }
  cypher_array = cypher_array.collect(&:chr)
  "cryptographed text: #{cypher_array.join}"
end

def break_cypher
  puts 'insert the encrypted message'
  encrypted_message = gets.chomp
  puts 'Now insert the number key of the encryption'
  encryption_index = gets.chomp.to_i
  encrypted_message = encrypted_message.codepoints.collect { |char_value| char_value - encryption_index }
  decrypted_message = encrypted_message.collect(&:chr)
  "The message is: #{decrypted_message.join}"
end

def menu
  loop do
    puts 'Enter 1 to encrypt, 2 to decrypt, or 3 to quit'
    case gets.chomp.to_i
    when 1 then caesar_cypher
    when 2 then break_cypher
    when 3 then break
    else puts 'Enter a valid option'
    end
  end
end
