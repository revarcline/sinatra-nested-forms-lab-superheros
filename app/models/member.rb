class Member
  attr_accessor :name, :power, :biography

  @all = []

  class << self
    attr_accessor :all
  end

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]

    self.class.all << self
  end

  def self.clear
    @all = []
  end
end
