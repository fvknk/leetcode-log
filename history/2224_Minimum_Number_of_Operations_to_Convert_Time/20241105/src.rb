# @param {String} current
# @param {String} correct
# @return {Integer}
def convert_time(current, correct)
  current_minute = current[0..1].to_i * 60 + current[3..4].to_i
  correct_minute = correct[0..1].to_i * 60 + correct[3..4].to_i

  count = 0

  increase_minutes = [60, 15, 5, 1]
  increase_minutes.each do |t|
    while current_minute + t <= correct_minute
      count += 1
      current_minute += t
    end
    break if current_minute == correct_minute
  end

  count
end
