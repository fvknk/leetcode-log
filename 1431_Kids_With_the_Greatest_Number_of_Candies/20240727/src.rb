# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  candies.map{ |c| c + extra_candies >= candies.max }
end
