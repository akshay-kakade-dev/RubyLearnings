def like_map(array)
  result = []
  array.each do |element|
    result << (yield element)
  end
  result
end

arr = [1,2,7]

result = like_map(arr) do |number|
  number * 2
end

p result #[2, 4, 14]
