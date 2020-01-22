gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MapPatternTest < Minitest::Test

  def test_capitalize
    skip
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_doubles
    skip
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      doubles << number * 2
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    skip
    numbers = [1, 2, 3, 4, 5]
    squares = []
    numbers.each do |number|
      squares << number * number
    end
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = []
    names.each do |name|
      lengths << name.length
    end
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    skip
    numbers = [234, 10, 9119, 38881]
    zip_codes = []
    numbers.each do |num|
      num_string = "#{num}"
      num_length = num_string.length
      num_length = 5 - num_length
      zeroes = ""
      for i in 1..num_length do
        zeroes << "0"
      end
      zip_code = "#{zeroes}#{num}"
      zip_codes << zip_code
    end
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_backwards
    skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    backwards = []
    names.each do |name|
      backwards << name.reverse
    end
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels
    skip
    words = ["green", "sheep", "travel", "least", "boat"]
    without_vowels = []
    words.each do |word|
      word = word.gsub("a", "")
      word = word.gsub("e", "")
      word = word.gsub("i", "")
      word = word.gsub("o", "")
      word = word.gsub("u", "")
      without_vowels << word
    end
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_letter
    skip
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    trimmed = []
    animals.each do |ani|
      trimmed << ani.chop
    end
    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed
  end

end
