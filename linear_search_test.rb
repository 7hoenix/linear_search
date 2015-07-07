require 'minitest/pride'
require_relative 'linear_search'

class LinearSearchTest < Minitest::Test
  def test_it_handles_one_number_in_the_data_set
    data = [1]
    searcher = LinearSearch.new(data)
    assert_equal "x is at position 0", searcher.search(1)
  end

  def test_it_handles_two_numbers_with_a_simple_input
    data = [1,2]
    searcher = LinearSearch.new(data)
    assert_equal "x is at position 0", searcher.search(1)
  end

  def test_it_handles_two_numbers_with_a_random_input
    data = [2,1]
    searcher = LinearSearch.new(data)
    assert_equal "x is at position 1", searcher.search(1)
  end

  def test_it_handles_a_number_outside_of_the_data_set
    data = [2,1]
    searcher = LinearSearch.new(data)
    assert_equal "Value not found", searcher.search(4)
  end

  def test_it_handles_a_larger_data_set
    data = [5,4,3,2,1,2,3,4,5]
    searcher = LinearSearch.new(data)
    assert_equal "x is at position 4", searcher.search(1)
  end

  def test_it_handles_a_larger_data_set_with_a_search_outside_of_the_set
    data = [5,4,3,2,2,3,4,5]
    searcher = LinearSearch.new(data)
    assert_equal "Value not found", searcher.search(1)
  end

  def test_it_handles_the_actual_assignment
    values = (1..1000).to_a.shuffle
    searcher = LinearSearch.new(values)
    assert_equal 75, searcher.search(1001)
  end
end
