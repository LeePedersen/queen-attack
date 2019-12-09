class Array
  def queen_attack?(x, y)
    if self[0] == x || self[1] == y || self[0] + self[1] == x + y || self[0] - self[1] == x - y
      true
    else
      false
    end
  end
end
