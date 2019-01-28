class Hero
  attr_accessor :name, :power, :biography
  HEROS = []

  def initialize (args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    HEROS << self
  end

  def self.all
    HEROS
  end

  def self.clear
    HEROS.clear
  end

end
