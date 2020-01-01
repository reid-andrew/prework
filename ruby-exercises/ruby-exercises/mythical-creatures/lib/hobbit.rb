class Hobbit
  attr_reader :name, :disposition, :age, :old, :has_ring, :is_short

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
    @has_ring = false
    @is_short = true
  end

  def celebrate_birthday
    @age += 1
  end

  def age
    @age
  end

  def adult?
    if @age > 32
      @adult = true
    end
    return @adult
  end

  def old?
    if @age > 100
      @old = true
    end
    return @old
  end

  def has_ring?
    if @name == "Frodo"
      @has_ring = true
    end
    return @has_ring
  end

  def is_short?
      @is_short
  end
end
