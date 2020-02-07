def solveMeFirst (a, b)
  # Hint: Type return a+b below   
  return a + b
end

# simple array

def simpleArraySum(ar)

    ar.reduce(:+)

end

# triples

def compareTriplets(a, b)
    score = [0,0]

    a.each_index do |index|

        if a[index] > b[index]
            score[0] += 1
        elsif a[index] < b[index]
            score[1] += 1
        end

    end

    return score

end

# big sum

def aVeryBigSum(ar)

ar.reduce(:+)

end

# diagonal difference, tic tac toe

def diagonalDifference(arr)

    top_left = 0
    top_right = 0

    arr.each_index do |index|

        top_left += arr[index][index]
        arr[index].reverse!
        top_right += arr[index][index]

    end

    sum = top_left - top_right
    return sum.abs
    
    # Write your code here

end

# plus minus

def plusMinus(arr)
    
    positive = arr.select do |num|
    num > 0
    end
    negative = arr.select do |num|
    num < 0
    end
    zero = arr.select do |num|
    num == 0
    end

    length = arr.length
    p_fraction = positive.length.to_f / length
    n_fraction = negative.length.to_f / length
    z_fraction = zero.length.to_f / length

    puts p_fraction, n_fraction, z_fraction

end
