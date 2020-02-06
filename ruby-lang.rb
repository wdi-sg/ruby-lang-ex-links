# solve me first

def solveMeFirst (a, b)
  # Hint: Type return a+b below
  return a+b

end

val1 = gets.to_i
val2 = gets.to_i
sum = solveMeFirst(val1,val2)
print (sum)

# simple array sum
def simpleArraySum(ar)
    # Write your code here.
   ar.inject {|sum, number| sum + number}
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()

# compare triplets
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
    res = a.collect.with_index{|aa,idx| (aa <=> b[idx])}
    res.delete(0)
    positives, negatives = res.partition(&:positive?)
      [positives.length, negatives.length]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
