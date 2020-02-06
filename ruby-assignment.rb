################# 01 Solve Me First ###################
def solveMeFirst (a, b)
  return a + b
end



################# 02 Simple Array Sum #################
def simpleArraySum(ar)
    ar.sum
end



############### 03 Compare the triplets ###############
def compareTriplets(a, b)

    score = [0, 0]

    i = 0
    a.map do |num|
    if a[i] > b[i]
    score[0] += 1
    elsif a[i] < b[i]
    score[1] += 1
    end
    i += 1
    end
    return score
end



################# 04 A Very Big Sum #################
def aVeryBigSum(ar)
    sum = ar.sum
return sum
end


