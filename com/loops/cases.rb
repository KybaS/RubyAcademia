class Cases
  age = 8

  case age
  when 1, 2, 3, 4, 5
    puts 'Little baby'
  when 6..10
    puts 'Baby'
  when 11..17
    puts 'Child'
  else
    puts 'Not a baby'
  end
end