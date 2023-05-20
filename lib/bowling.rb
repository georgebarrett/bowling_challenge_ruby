class Bowling

  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    frame = 0
    10.times do
      score = 0
    end
    return score
  end

  def strike(frame)
  end

  def sum_of_points_in_frame(frame)
  end

  def spare_bonus(frame)
  end

  def strike_bonus(frame)
  end

  def spare(frame)
  end

end