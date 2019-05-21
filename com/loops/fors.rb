class Fors
  for i in 1..10
    break if i > 7
    puts i
  end

  for i in 0..30
    next if i %2 == 0
    puts i
  end
end