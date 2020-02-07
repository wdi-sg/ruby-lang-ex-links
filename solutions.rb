Droplets...

def compareTriplets(a, b)

a_score = 0
b_score = 0

a.each_index{|x|

if a[x] < b[x]
b_score += 1
elsif a[x] > b[x]
a_score += 1
end

}

p total_score = [a_score,b_score]

end

Big Sum...

def aVeryBigSum(ar)

ar.inject(0){|sum,x| sum + x }


end

Diagonal Difference

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

Plus minus...

def plusMinus(arr)

total = arr.length

random_arr = arr.shuffle

slice = random_arr.each_slice(random_arr.length)

slice.map { |s| 
    positive = s.count{ |x| x > 0 }
    p positive.to_f/total

    negative = s.count{ |x| x < 0 }
    p negative.to_f/total

    zero = s.count{ |x| x == 0 }
    p zero.to_f/total
    }

end
