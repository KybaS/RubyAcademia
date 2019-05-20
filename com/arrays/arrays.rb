class Arrays
  array1 = [1, 2, 3]
  array2 = [3, 4, 5]
  arrays = array1 + array2
  print arrays
  res = arrays.reverse
  print res
  print array1.reverse!

  arrays.size
  arrays.freeze
  print arrays.frozen?
  print arrays.uniq
end