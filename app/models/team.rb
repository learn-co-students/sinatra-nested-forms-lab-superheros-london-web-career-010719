class Team

  TEAMS = []

  attr_accessor :name, :motto

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end

end
