require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_exists
    assert BubbleSort.new
  end

  def test_it_has_a_class
    b = BubbleSort.new
    assert BubbleSort, b.class
  end

  def it_works_when_only_one_element
    b = BubbleSort.new
    assert_equal ["m"], b.sort(["m"])
  end

  def test_it_can_sort_two_elements
    b = BubbleSort.new
    assert_equal ["e", "p"], b.sort(["p", "e"])
  end

  def test_it_can_sort_five_elements
    b = BubbleSort.new
    expected = ["a", "b", "c", "d", "e"]
    assert_equal expected, b.sort(["d", "c", "e", "b", "a"])
  end

  def test_it_can_sort_already_sorted_arrays
    b = BubbleSort.new
    assert_equal ["a", "b", "c"], b.sort(["a", "b", "c"])
  end

  def test_it_can_sort_arrays_with_duplicated_elements
    b = BubbleSort.new
    assert_equal ["d", "n", "n", "z"], b.sort(["n", "z", "d", "n"])
  end

  def test_it_can_sort_arrays_with_words_and_letters
    b = BubbleSort.new
    assert_equal ["cat", "d", "snake", "y"], b.sort(["y", "cat", "snake", "d"])
  end

  def test_it_can_sort_array_with_mixed_element_types
    b = BubbleSort.new
    assert_equal [2, 7, "m", "z"], b.sort(["z", 7, "m", 2])
  end

end
