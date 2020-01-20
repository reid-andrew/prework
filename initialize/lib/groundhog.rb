class Groundhog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name=(my_name)
    if my_name
      @name = my_name
    end
    @name
  end

end
