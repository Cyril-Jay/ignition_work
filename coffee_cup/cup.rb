class Cup
  def initialize( max_capacity = 12, current_capacity = 8)
    @max_capacity = max_capacity
    @current_capacity = current_capacity
  end

  def sip(amount)
    if @current_capacity > 0
      @current_capacity -= amount
    else
      "Hey you need some more"
    end
  end

  def spill
    @current_capacity = 0
  end

  def refill
    @current_capacity = @max_capacity - 2
  end

end
