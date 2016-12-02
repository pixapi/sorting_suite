class InsertionSort
  def sort(letters)
    unsorted = letters
    sorted = []
      (letters.length).times do
        i = 0
        temp = unsorted.shift.to_s
        until sorted.include?(temp)
          if sorted[i] != nil && sorted[i].to_s < temp
            i += 1
          else
            sorted.insert(i, temp)
          end
        end
      end
      sorted
      #when running this file, put p in front of sorted in above line so it prints result
  end
end

i = InsertionSort.new
i.sort(["d", "c", "e", "b", "a"])
