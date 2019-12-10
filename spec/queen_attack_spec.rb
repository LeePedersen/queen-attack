require('rspec')
require('pry')
require('queen_attack')
# require('knight_attack')

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?(2, 3)).to(eq(false))
  end
  it('is true if the coordinates are  horizontally in line with each other') do
    expect([1,1].queen_attack?(1, 3)).to(eq(true))
  end
  it('is true if the coordinates are vertically in line with each other') do
    expect([1,3].queen_attack?(2, 3)).to(eq(true))
  end
  it('is true if the coordinates are diagonally in line with each other') do
    expect([2,2].queen_attack?(3, 1)).to(eq(true))
  end
  it('is true if the coordinates are diagonally in line with each other') do
    expect([4,5].queen_attack?(6, 7)).to(eq(true))
  end
end

describe('Array#knight_attack?') do
  it('is true if knight can attack') do
    expect([4,4].knight_attack?(6, 5)).to(eq(true))
  end
end

describe('Array#rook_attack?') do
  it('is true if rook can attack') do
    expect([5,4].rook_attack?(4, 4)).to(eq(true))
  end
end

describe('Array#king_attack?') do
  it('is true if king can attack') do
    expect([2,5].king_attack?(1,4)).to(eq(true))
  end
end
describe('Array#bishop_attack?') do
  it('is true if bishop can attack') do
    expect([1,6].bishop_attack?(6,1)).to(eq(true))
  end
end
describe('Array#pawn_attack?') do
  it('is true if pawn can attack') do
    expect([2,6].pawn_attack?(3,5)).to(eq(true))
  end
end
