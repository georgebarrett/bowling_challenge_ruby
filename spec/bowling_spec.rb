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


  private

  def roll_many(number, pins)
    number.times { game.roll(pins) }
  end

end