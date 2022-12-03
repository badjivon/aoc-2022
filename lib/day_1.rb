class Day1 < AOC
  def solve(part:)
    file = read_input_file
    elves = []
    calories = 0

    file.each do |line|
      calories += line.to_i 
      if line.to_i == 0
        elves << calories
        calories = 0
      end
    end

    elves << calories

    if part == 1
      elves.max
    else
      elves
        .max(3)
        .sum
    end
  end
end
