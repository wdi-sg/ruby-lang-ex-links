#Solve Me First - Solved

def solveMeFirst (a, b)
  # Hint: Type return a+b below   
return a + b
end

val1 = gets.to_i
val2 = gets.to_i
sum = solveMeFirst(val1,val2)
print (sum)

#Simple Array Sum


def simpleArraySum(ar)
    #
    # Write your code here.
    ar.inject(0, :+)
    #

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()


# A VeryBigSUm - Solved
require 'json'
require 'stringio'

# Complete the aVeryBigSum function below.
def aVeryBigSum(ar)

ar.inject(0, :+)
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = aVeryBigSum ar

fptr.write result
fptr.write "\n"

fptr.close()


# Diagonal Difference - Solved 
#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#


def diagonalDifference(arr)
    # Write your code here
main_diagonal_sum=0
  main_skew_diagonal_sum=0
  arr.each_with_index do |row, i|
    # each_with_index which allows you to iterate over items along with an index keeping count of the item; returns the row and 
    main_diagonal_sum += row[i]
    main_skew_diagonal_sum += row[-i-1]
  end
  (main_diagonal_sum - main_skew_diagonal_sum).abs
  # The abs() function in Ruby returns the absolute value of the integer.


end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()

# PlusMinus - unsolved
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
n = gets.strip.to_i
arr = gets.strip 
arr = arr.split(' ').map(&:to_i)
positive=negetative=zero=0
arr.each do |a|
    if a>0
        positive+=1
    elsif a<0
        negetative+=1
    else
        zero+=1
    end
end
if n>0
    puts pos.fdiv(n)
    puts neg.fdiv(n)
    puts zero.fdiv(n)
else
    puts 0
    puts 0
    puts 0
end

end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr


#Comparing triplets - unsolved
!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
a0,a1,a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0,b1,b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i
alice = 0
bob = 0
if a0 > b0 then
    alice += 1
elsif a0 < b0 then
    bob += 1
end
if a1 > b1 then
    alice += 1
elsif a1 < b1 then
    bob += 1
end
if a2 > b2 then
    alice += 1
elsif a2 < b2 then
    bob += 1
end
    print "#{alice}\s#{bob}"

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()


# Staircase - solved
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  for i in (1..n)
    puts ' ' * (n-i) + '#' * i
  end
end

n = gets.to_i

staircase n


#Minimax - solved
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)

maxSum = arr.inject(0, :+) - arr.max

miniSum = arr.inject(0, :+) - arr.min

 puts "#{maxSum} #{miniSum}" 
 end


arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr

#BirthdayCake Candles - solved
  require 'json'
require 'stringio'


# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
    count = 0
    tallestCandle = ar.max
    
    for i in 0...ar.length
      if (tallestCandle == ar[i])
          count += 1
      end
    end
     count 
  end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = birthdayCakeCandles ar

fptr.write result
fptr.write "\n"

fptr.close()

#Timeconversion - unsolved
#!/bin/ruby

#
# Complete the timeConversion function below.
#
def timeConversion(s)
    input_time = gets.to_s
    hours = input_time.slice(0, 2).to_i
    minutes = input_time.slice(input_time.index(":") + 1, 2).to_i
    seconds = input_time.slice(input_time.index(":", input_time.index(":") + 1) + 1, 2).to_i
    
    newHours = hours
    if hours == 12 then
      newHours = 0 
    end
    
    shift = 0
    if input_time.upcase.include? "PM" then
      shift = 12
    end
    
    puts "%02d:%02d:%02d" % [newHours + shift, minutes, seconds]
    end 
    fp = File.open(ENV['OUTPUT_PATH'], 'w')
    
    s = gets.to_s.rstrip
    
    result = timeConversion s
    
    fp.write result
    fp.write "\n"
    
    fp.close()