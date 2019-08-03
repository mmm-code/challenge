def find_missing_number(sequence)
  #your code here
  sequence.split.map(&:to_i).sort.each.with_index(1) do |n, i|
    return i if n != i
  end
  0
end

