class AssemblyLine
  CAR_PRODUCTION_RATE = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    (success_rate(@speed) * @speed * CAR_PRODUCTION_RATE).to_f
  end

  def working_items_per_minute
    (self.production_rate_per_hour / 60).to_i
  end

  private 

  def success_rate(speed)
    case speed
    when 1..4 then 1
    when 5..8 then 0.9
    when 9 then 0.8
    when 10.. then 0.77
    else 0
    end
  end
end
