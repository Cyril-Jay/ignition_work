class Team
  attr_accessor :name, :rank, :wins, :losses
  def initialize(name)
    @name = name
    @rank = rank
    @wins = 0
    @losses = 0
  end
end
