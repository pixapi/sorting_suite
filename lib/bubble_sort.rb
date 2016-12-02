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
    letters
    #when running this file, put p in front of letters in above line so it prints result
  end
end

b = BubbleSort.new
b.sort(["d", "c", "e", "b", "a"])
