# ruby-lang-ex-links

Problems from [hackerrank](https://www.hackerrank.com)

### Begin here:

https://www.hackerrank.com/domains/algorithms?filters%5Bsubdomains%5D%5B%5D=warmup
# SOLVE ME FIRST
def solveMeFirst (a, b)
  a + b
end


# SIMPLE ARRAY SUM
def simpleArraySum(ar)
  ar.inject(0, :+)
end


# A VERY BIG SUM
def aVeryBigSum(ar)
  ar.inject(0, :+)
end


# MINI-MAX SUM
def miniMaxSum(arr)
maxSum = arr.inject(0, :+) - arr.max
miniSum = arr.inject(0, :+) - arr.min
 puts "#{maxSum} #{miniSum}"
 end


# STAIRCASE
def staircase(n)
  for i in (1..n)
    puts ' ' * (n-i) + '#' * i
  end
end



### Move on to here:

https://www.hackerrank.com/challenges/apple-and-orange/problem

https://www.hackerrank.com/challenges/kangaroo/problem

https://www.hackerrank.com/challenges/the-birthday-bar/forum

https://www.hackerrank.com/challenges/migratory-birds/problem

https://www.hackerrank.com/challenges/bon-appetit/problem

https://www.hackerrank.com/challenges/sock-merchant/problem

Copy the function code solutions into the file. **You don't need to be able to run it from the repo.**

