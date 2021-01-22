class Team
  attr_accessor :name, :motto

  @all = []

  class << self
    attr_accessor :all
  end

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]

    self.class.all << self
  end

  def self.clear
    @all = []
  end
end
