gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class MapTest < Minitest::Test

  def test_capitalize
    skip
    names = ["alice", "bob", "charlie"]
    capitalized_names = names.map do |name|
      name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_doubles
    skip
    numbers = [1, 2, 3, 4, 5]
    doubles = numbers.map do |number|
      number * 2
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    skip
    numbers = [1, 2, 3, 4, 5]
    squares = numbers.map do |num|
      num * num
    end
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = names.map do |name|
      name.length
    end
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    skip
    numbers = [234, 10, 9119, 38881]
    zip_codes = numbers.map do |num|
      zip = "#{num}"
      while zip.length < 5 do
        zip = "0#{zip}"
      end
      zip
    end
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_backwards
    skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    backwards = names.map do |name|
      name.reverse
    end
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels
    skip
    words = ["green", "sheep", "travel", "least", "boat"]
    without_vowels = words.map do |word|
      word = word.gsub("a", "")
      word = word.gsub("e", "")
      word = word.gsub("i", "")
      word = word.gsub("o", "")
      word = word.gsub("u", "")
      word
    end
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_letter
    skip
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    trimmed = animals.map do |ani|
      ani.chop
    end
    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed
  end

end
