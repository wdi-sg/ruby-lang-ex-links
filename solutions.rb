#
# Complete the simpleArraySum function below.
#
def simpleArraySum(ar)
    #
    # Write your code here.
    #
    sum = 0
    ar.collect do |number|
        sum += number
    end
    return sum
end

# Complete the compareTriplets function below.
def compareTriplets(a, b)
    array_a = a
    array_b = b
    results = [0,0]
    array_a.collect.with_index do |value, index|
        if value > array_b[index]
            results[0] += 1
        elsif value < array_b[index]
            results[1] += 1
        end
    end
    return results
end

# Complete the aVeryBigSum function below.
def aVeryBigSum(ar)
    sum = 0
    ar.collect do |value|
        sum += value
    end
    return sum
end

def diagonalDifference(arr)
    # Write your code here
    length = arr.length - 1
    diagonal_a = 0
    diagonal_b = 0
    for i in 0..length do
        diagonal_a += arr[i][i]
        diagonal_b += arr[length - i][i]
    end
    result = (diagonal_a - diagonal_b).abs
    return result
end

# Complete the plusMinus function below.
def plusMinus(arr)
    positive_count = 0
    negative_count = 0
    zero_count = 0
    arr.collect do |number|
        if number > 0
            positive_count += 1
        elsif number < 0
            negative_count += 1
        else
            zero_count += 1
        end
    end
    total = (positive_count + negative_count + zero_count).to_f
    # [(positive_count / total), (negative_count / total), (zero_count / total) ]
    puts positive_count / total
    puts negative_count / total
    puts zero_count / total
end

# Complete the staircase function below.
def staircase(n)
    for i in 1..n do
        puts ("#" * i).rjust(n)
    end

end

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
    minimum = arr.sum
    maximum = 0
    arr.collect do |number|
        sum = arr.sum - number
        minimum = [minimum, sum].min
        maximum = [maximum, sum].max
    end
    puts minimum.to_s + " " + maximum.to_s
end

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
    height = 0
    count = 0
    ar.collect do |number|
        if number > height
            count = 1
            height = number
        elsif number == height
            count += 1
        else
        end
    end
    return count
end

#
# Complete the timeConversion function below.
#
def timeConversion(s)
    #
    # Write your code here.
    #
    split = s.split(":")
    pm = split[2][-2,2]
    split[2] = split[2][0,2]
    if pm == "AM" && split[0] == "12"
        split[0] = 00
    end
    if pm == "PM"
        split[0] = split[0].to_i + 12
        if split[0] == 24
            split[0] = 12
        end
    end

    split[0] = split[0].to_s.rjust(2,"0")
    split[1] = split[1].to_s.rjust(2,"0")
    split[2] = split[2].to_s.rjust(2,"0")

    p split.join(":")
end

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
    # apple_tree = a
    # orange_tree = b
    # house = [s, t]
    apple_count = 0
    orange_count = 0

    apples.collect do |distance|
        if ((a + distance) >= s) && ((a + distance) <= t)
            apple_count += 1
        end
    end

    oranges.collect do |distance|
        if ((b + distance) >= s) && ((b + distance) <= t)
            orange_count += 1
        end
    end

    puts apple_count
    puts orange_count

end

# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
    x1_behind = (x1 < x2)
    # Check if kangaroos will never meet
    if !x1_behind && (v1 >= v2)
        print 'NO'
        return 'NO'
    end
    if x1_behind && (v2 >= v1)
        print 'NO'
        return 'NO'
    end

    loop do
        x1 += v1
        x2 += v2
        if x1 == x2
            print 'YES'
            return 'YES'
        end
        if x1_behind
            if x1 > x2
                print 'NO'
                return 'NO'
            end
        elsif x2 > x1
                print 'NO'
                return 'NO'
            end

    end
end

# Complete the birthday function below.
def birthday(s, d, m)
    # s is array [1,2,3]
    # d is day (total)
    # m is month (number of squares)
    len = s.length - (m - 1)
    count = 0

    for i in 0..len do
        if s[i,m].sum == d
            count += 1
        end
    end

    return count
end

# Complete the migratoryBirds function below.
def migratoryBirds(arr)
    sight = [0,0,0,0,0,0]

    max = 0

    arr.collect do |number|
        sight[number] += 1
        max = [max, sight[number]].max
    end

    p sight.find_index(max)

end

# Complete the bonAppetit function below.
def bonAppetit(bill, k, b)
    # bill: an array of integers representing the cost of each item ordered
    # k: an integer representing the zero-based index of the item Anna doesn't eat
    # b: the amount of money that Anna contributed to the bill
    bill.delete_at(k)
    split = (bill.sum) / 2.0
    if (b == split)
        print 'Bon Appetit'
    else
        print (b - split).to_i
    end

end
