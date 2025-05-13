grade = gets.chomp.upcase

did_i_pass = case grade
     when 'A' then "Hell Yeah!"
     when 'D' then "Don't tell your mother"
     else "YOU SHALL NOT PASS! -Gandalf" 
end

puts did_i_pass
