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
      if spare?(frame)
        score += 10 + spare_bonus(frame)
        frame += 2
      else
        score += sum_of_points_in_frame(frame)
        frame += 2
      end
    end
    return score
  end

  def strike(frame)
  end

  def sum_of_points_in_frame(frame)
    @rolls[frame] + @rolls[frame + 1]
  end

  def spare_bonus(frame)
    @rolls[frame + 2]
  end

  def strike_bonus(frame)
  end

  def spare?(frame)
    @rolls[frame] + @rolls[frame + 1] == 10
  end

end