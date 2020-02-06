# frozen_string_literal: true

def simpleArraySum(ar)
  ar.sum
end

def compareTriplets(a, b)
  a_score = 0
  b_score = 0
  results = []
  a.map.with_index do |number, index|
    if number > b[index]
      a_score += 1
    elsif number < b[index]
      b_score += 1
    end
  end
  results.push(a_score)
  results.push(b_score)
  results
end
