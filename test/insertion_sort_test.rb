require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_it_exists
    assert InsertionSort.new
  end

  def test_it_has_a_class
    b = InsertionSort.new
    assert InsertionSort, b.class
  end

  def test_it_works_when_only_one_element
    b = InsertionSort.new
    assert_equal ["g"], b.sort(["g"])
  end

  def test_it_can_sort_three_elements
    b = InsertionSort.new
    assert_equal ["a", "d", "l"], b.sort(["d", "a", "l"])
  end

  def test_it_can_sort_ten_elements
    b = InsertionSort.new
    expected = ["a", "b", "c", "d", "e"]
    assert_equal expected, b.sort(["d", "c", "e", "b", "a"])
  end

  def test_it_can_sort_already_sorted_arrays
    b = InsertionSort.new
    assert_equal ["a", "b", "c"], b.sort(["a", "b", "c"])
  end

  def test_it_can_sort_arrays_with_words_and_letters
    b = InsertionSort.new
    assert_equal ["car", "horse", "phone", "v"], b.sort(["v", "horse", "car", "phone"])
  end

end
