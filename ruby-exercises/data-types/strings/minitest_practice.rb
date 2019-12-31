require 'minitest/autorun'

def square_root(value)
  return nil if value < 0
  Math.sqrt(value).round
end

def reverse(value)
  value.reverse
end

class SquareRootTest < Minitest::Test
  def test_that_square_root_of_9_is_3
    result = square_root(9)
    assert_equal 3, result
  end

  def test_that_square_root_of_17_is_4
    result = square_root(17)
    assert_equal 4, result
  end

  def test_that_square_root_of_24_is_5
    result = square_root(24)
    assert_equal 5, result
  end

  def test_that_square_root_of_negative_number_is_nil
    result = square_root(-1)
    assert_nil result
  end

  def test_that_reverse_is_reversed
    result = reverse('abc')
    assert_equal 'cba', result
  end

  def test_that_equal_equals_equal
    assert_equal true, true
  end
end
