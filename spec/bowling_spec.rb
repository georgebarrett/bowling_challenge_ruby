require 'bowling'

RSpec.describe Bowling do
  let(:game) { Bowling.new }

  it 'accounts for a gutter game' do
    roll_many(20, 0)
    expect(game.score).to eq 0
  end

  it 'accounts for the bowler scoring all ones' do
    roll_many(20, 1)
    expect(game.score).to eq 20
  end

  it 'accounts for the bowler getting a spare' do
    roll_spare
    game.roll(3)
    roll_many(17, 0)
    expect(game.score).to eq 16
  end

  it 'accounts for a bowler getting a strike' do
    roll_strike
    game.roll(3)
    game.roll(4)
    roll_many(16, 0)
    expect(game.score).to eq 24
  end

  it 'accounts for a bowler having a perfect game' do
    roll_many(12, 10)
    expect(game.score).to eq 300
  end


  private

  def roll_many(number, pins)
    number.times { game.roll(pins) }
  end

  def roll_spare
    game.roll 5
    game.roll 5
  end

  def roll_strike
    game.roll 10
  end

end