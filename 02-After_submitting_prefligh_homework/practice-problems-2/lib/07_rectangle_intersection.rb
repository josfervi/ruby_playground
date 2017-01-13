# # changed the provided solution to make it more readable

# BL, TR = 0, 1 # bottomleft,  topright
# X,  Y  = 0, 1 # xcoordinate, ycoordinate

# def rec_intersection(rect1, rect2)
    
    # the following are the intersection rectangle attributes
#   _BL_X = [rect1[BL][X], rect2[BL][X]].max
#   _BL_Y = [rect1[BL][Y], rect2[BL][Y]].max

#   _TR_X = [rect1[TR][X], rect2[TR][X]].min
#   _TR_Y = [rect1[TR][Y], rect2[TR][Y]].min

#   return nil if ((_BL_X >= _TR_X) || (_BL_Y >= _TR_Y))
  
#   return [ [_BL_X, _BL_Y], [_TR_X, _TR_Y] ]
# end

# my solution:

BL, TR = 0, 1 # BL:= bottom left  # TR:= top right
X,  Y  = 0, 1
B = L = 0
T = R = 1

def rec_intersection(rect1, rect2)
  # decompose the 2D rectangle problem into
  # two 1D line problems
  
  horiz_overlap= line_overlap( horiz_line(rect1), horiz_line(rect2) )
   vert_overlap= line_overlap( vert_line(rect1),  vert_line(rect2)  )
  
  return nil if horiz_overlap.nil? || vert_overlap.nil?
  
  rect_of_inter_BL= [ horiz_overlap[L], vert_overlap[B] ]
  rect_of_inter_TR= [ horiz_overlap[R], vert_overlap[T] ]
  
  return rect_of_inter= [rect_of_inter_BL, rect_of_inter_TR]
end

# Returns the horizontal line segment that spans grid-aligned rectangle rect
def horiz_line(rect)
  line(rect, "horizontal")
end

# Returns the vertical line segment that spans grid-aligned rectangle rect
def vert_line(rect)
  line(rect, "vertical")
end

def line( rect, orientation )
  _C = coordinate = X if orientation.eql? "horizontal"
  _C = coordinate = Y if orientation.eql? "vertical"
  
  [ rect[BL][_C], rect[TR][_C] ]
end


X1, X2 = 0, 1 # indeces into the start of the line and the end of the line respectively
# finds the overlap of two collinear line segments, itself a line segment
# collinear line segments lie on the same line
# +line1+:: +line+
# +line2+:: +line+ 
# line:= [x1, x2]; a line segment that extends from x1 to x2
def line_overlap( line1, line2 )
  
  overlap= [nil, nil]
  
  overlap[X1]= [line1[X1], line2[X1]].max
  overlap[X2]= [line1[X2], line2[X2]].min
  
  return nil if overlap[X1] >= overlap[X2]
  
  return overlap
end