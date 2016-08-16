class Theater
  attr_accessor :max_occupancy, :current_occupancy

  def initialize(number_of_seats)
    @max_occupancy = number_of_seats
    @current_capacity = 0
  end

  def admit! (viewers = 1)
    if @current_capacity + viewers > @max_occupancy
      "We are full, no entry."
    else
      @current_capacity += viewers
    end
  end

  def at_capacity?
    @max_capacity == @current_capacity
  end

  def record_walk_outs! (viewers = 1)
    @current_capacity -= viewers
  end

end
