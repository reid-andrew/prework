class Centaur
  attr_reader :name, :breed, :standing, :laying

  def initialize(name, breed)
    @name = name
    @breed = breed
    @shots = 0
    @runs = 0
    @standing = true
    @laying = false
  end

  def shoot
    @shots += 1
    if @shots >= 3 || @laying == true
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @runs += 1
    if @shots >= 3 || @laying == true
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    return true if @runs + @shots == 3
    false
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def sleep
    if standing? == true
      "NO!"
    else
      @shots = 0
      @runs = 0
    end
  end

  def drink_potion
    if !standing?
      "Stand up first"
    elsif !cranky?
      "Gets sick"
    else
      @shots = 0
      @runs = 0
    end
  end
end
