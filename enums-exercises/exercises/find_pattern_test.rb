gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_find_first_seven_letter_word
    # skip
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    assert_equal "unicorn", found
  end

  def test_no_waldo
    # skip
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    words.each do |word|
      if word == "waldo"
        found = word
        break
      end
    end
    assert_nil(found)
  end

  def test_find_waldo
    # skip
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil
    words.each do |word|
      if word == "waldo"
        found = word
        break
      end
    end
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words
    # skip
    words = ["piglet", "porridge", "bear", "blueberry"]
    found = nil
    words.each do |word|
      if word.length == 3
        found = word
        break
      end
    end
    assert_nil(found)
  end

  def test_find_13
    # skip
    numbers = [2, 13, 19, 8, 3, 27]
    found = nil
    numbers.each do |num|
      if num == 13
        found = num
        break
      end
    end
    assert_equal 13, found
  end

  def test_find_first_even_number
    # skip
    numbers = [3, 7, 13, 11, 10, 2, 17]
    found = nil
    numbers.each do |num|
      if num % 2 == 0
        found = num
        break
      end
    end
    assert_equal 10, found
  end

  def test_find_first_multiple_of_3
    # skip
    numbers = [2, 8, 9, 27, 24, 5]
    found = nil
    numbers.each do |num|
      if num % 3 == 0
        found = num
        break
      end
    end
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    # skip
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    found = nil
    words.each do |word|
      if word[0] == "q"
        found = word
        break
      end
    end
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er
    # skip
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    found = nil
    words.each do |word|
      char_count = word.length
      if word[char_count - 1] == "r" && word[char_count - 2] == "e"
        found = word
        break
      end
    end
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    # skip
    numbers = [1, 8, 19, 21, 29, 31, 34]
    found = nil
    numbers.each do |num|
      if num > 20
        found = num
        break
      end
    end
    assert_equal 21, found
  end

end
