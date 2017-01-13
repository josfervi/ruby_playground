# changed it to make it more readable

BL, TR = 0, 1 # bottomleft,  topright
X,  Y  = 0, 1 # xcoordinate, ycoordinate

def rec_intersection(rect1, rect2)
  
  _BL_X = [rect1[BL][X], rect2[BL][X]].max
  _BL_Y = [rect1[BL][Y], rect2[BL][Y]].max

  _TR_X = [rect1[TR][X], rect2[TR][X]].min
  _TR_Y = [rect1[TR][Y], rect2[TR][Y]].min

  return nil if ((_BL_X >= _TR_X) || (_BL_Y >= _TR_Y))
  
  return [ [_BL_X, _BL_Y], [_TR_X, _TR_Y] ]
end