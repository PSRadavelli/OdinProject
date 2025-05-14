# frozen_string_literal: true

def unicode_cipher(text, key)
  text.downcase.codepoints.map { |char| (char + key).chr }.join
end

def unicode_decipher(text, key)
  text.codepoints.map { |char| (char - key).chr }.join
end

def prompt(message)
  print "#{message}: "
  gets.chomp
end

def encrypt
  text = prompt('Insert the text')
  key = prompt('Now insert the key to use in the cryptography').to_i
  puts "Cryptographed text: #{unicode_cipher(text, key)}"
end

def decrypt
  encrypted_text = prompt('Insert the encrypted message')
  key = prompt('Now insert the number key of the encryption').to_i
  puts "The message is: #{unicode_decipher(encrypted_text, key)}"
end

def menu
  loop do
    puts "\nEnter 1 to encrypt, 2 to decrypt, or 3 to quit"
    case gets.chomp.to_i
    when 1 then encrypt
    when 2 then decrypt
    when 3 then break
    else puts 'Enter a valid option'
    end
  end
end

menu
