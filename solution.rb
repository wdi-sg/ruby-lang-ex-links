def solveMeFirst (a, b)
  a+b
end

# # Complete the compareTriplets function below.
def compareTriplets(a, b)
points = [0,0]
a.each_with_index do |point,index|
    if(point > b[index])
      points[0]= points[0] +1
    elsif(point < b[index])
      points[1] = points[1]+1
    end
end
return points
end

#
# Complete the simpleArraySum function below.
#
def simpleArraySum(ar)
    ar.inject(0){|sum,x| sum + x }
end

# # Complete the aVeryBigSum function below.
def aVeryBigSum(ar)
 ar.sum
end

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# # The function accepts 2D_INTEGER_ARRAY arr as parameter.
# #

def diagonalDifference(arr)
  value1 = 0
  value2 = 0
  currIndex = 0
  otherIndex = (arr.length - 1)
  arr.map do |row|
    value1 = value1 +row[currIndex]
    value2 = value2 +row[otherIndex]
    otherIndex -= 1;
    currIndex = currIndex+1;
  end
  (value1-value2).abs
end

#Complete the staircase function below.
def staircase(n)
    n.times do |index|
        space = " " * (n - (index+1))
        stair = "#" * (index+1)
        puts stair.prepend(space)
    end
end

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
   ar.count(ar.max)
end

#
# Complete the timeConversion function below.
#
require "time"
def timeConversion(s)
  time = Time.parse(s)
  hour = "%.2i" %time.hour
  min = "%.2i" %time.min
  sec = "%.2i" %time.sec
  "#{hour}:#{min}:#{sec}"
end

# Further
# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
    apple_pos = apples.map do |apple|
        a+apple
    end
    orange_pos = oranges.map do |orange|
        b+orange
    end
    puts apple_pos.select {|a|
        a>=s && a<=t}.size
    puts orange_pos.select {|o|
        o>=s && o<=t}.size
end

# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
    if ((x1 < x2 && v1 > v2) || (x1 > x2 && v1 < v2))
        behind = x2
        behind_speed = v2
        font = x1
        front_speed = v1
        if x1 <x2
            behind = x1
            front = x2
            behind_speed = v1
            front_speed = v2
        end
    until behind >= front do
            behind += behind_speed
            front += front_speed
        end
        if behind == front
            return "YES"
        else
            return "NO"
        end
    else
        return "NO"
    end
end