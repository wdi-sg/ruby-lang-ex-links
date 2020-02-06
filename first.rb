# solveMeFirst
def solveMeFirst (a, b)
  # Hint: Type return a+b below
   a + b
end

val1 = gets.to_i
val2 = gets.to_i
sum = solveMeFirst(val1,val2)
print (sum)

# simpleArraySum
def simpleArraySum(ar)
    #
    # Write your code here.
    #
#   ar.inject(0){|sum,x| sum + x }
  ar.reduce(:+)


end

#Solution from ruby doc
# Sum some numbers
# (5..10).reduce(:+)

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()


# aVeryBigSum
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the aVeryBigSum function below.
def aVeryBigSum(ar)

     ar.reduce(:+)

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = aVeryBigSum ar

fptr.write result
fptr.write "\n"

fptr.close()


# compareTriplets (YET TO BE COMPLETED, NOT FULLY WORKING TOO)
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
    a.each do |i|
  puts i
end
  b.each do |i|
  puts i

end

newarr=[]

if a[i] > b[i]
    newarr.push(1)
 elsif b[i] = a[i]
   newarr.shift(1)
   else a[i] = b[i]
   return newarr

 end



end



fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()


# plusMinus (YET TO BE COMPLETED, NOT FULLY WORKING TOO)
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
let arr1 = []
let arr2 = []
let arr3 = []
arr.each do |item|
  if item > 0
    arr1.push(item)
    elsif item == 0
    arr2.push(item)

    else item < 0
    arr3.push(item)
end

puts arr1.length / arr.length
puts arr2.length / arr.length
puts arr3.length / arr.length

end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr

end