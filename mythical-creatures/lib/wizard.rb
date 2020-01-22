class Wizard
  def initialize(name, bearded:)
    @name = name
    @bearded = :bearded
  end

  def name
    @name
  end

  def bearded?
    :bearded
  end

end
