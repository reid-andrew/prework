class Unicorn
attr_reader :name, :color
  def initialize(name, color = "white")
    @color = color
    @name = name
  end

  def white?
    return true if color == "white"
    false
  end

  def say(message)
    "**;* #{message} **;*"
  end

end
