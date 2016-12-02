class BubbleSort
  def sort(letters)
    loop do
    sorted = false
      (letters.length - 1).times do |i|
        if letters[i].to_s > letters[i+1].to_s
          letters[i], letters[i+1] = letters[i+1], letters[i]
          sorted = true
        end
      end
      break if !sorted
    end
    p letters
  end
end

b = BubbleSort.new
b.sort(["d", "c", "e", "b", "a"])
