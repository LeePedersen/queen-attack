class Array
  def queen_attack?(x, y)
    if self[0] == x || self[1] == y || self[0] + self[1] == x + y || self[0] - self[1] == x - y
      true
    else
      false
    end
  end
  def knight_attack?(x,y)
    if self[0] + 2 == x || self[0] - 2 == x
      if self[1] + 1 == y || self[1] - 1 == y
        true
      end
    elsif self[0] + 1 == x || self[0] - 1 == x
      if self[1] + 2 == y || self[1] - 2 == y
        true
      end
    else
      false
    end
  end
  def rook_attack?(x, y)
    if self[0] == x || self[1] == y
      true
    else
      false
    end
  end
  def king_attack?(x,y)
    if self[0] + 1 == x || self[0] - 1 == x || self[0] == x
      if self[1] + 1 == y || self[1] - 1 == y || self[1] == y
        true
      end
    else
      false
    end
  end
  def bishop_attack?(x,y)
    if  self[0] + self[1] == x + y || self[0] - self[1] == x - y
      true
    else
      false
    end
  end
  def pawn_attack?(x,y)
    if self[0] + 1 == x && (self[1] - 1 == y || self[1] + 1 == y)
      true
    else
      false
    end
  end
end
