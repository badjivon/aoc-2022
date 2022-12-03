class Day2 < AOC
  def solve(part:)
    file = read_input_file
    score = 0

    file.each do |line|
      player_1 = line[0]
      player_2 = line[2]
      if part ==1
        score += shifumi(player_1, player_2) + form(player_2)
      else
        score += shifumi(player_1, guide(player_1, player_2)) + form(guide(player_1, player_2))
      end
    end
    
    if part == 1
      score
    else
      score
    end
  end

  def shifumi(p1, p2)
    if (p1 == "A" && p2 == "X") || (p1 == "B" && p2 == "Y") || (p1 == "C" && p2 == "Z")
      3
    elsif (p1 == "A" && p2 == "Y") || (p1 == "B" && p2 == "Z") || (p1 == "C" && p2 == "X")
      6
    else
      0
    end
  end

  def form(p2)
    if p2 == "X"
      1
    elsif p2 == "Y"
      2
    else
      3
    end
  end

  def guide(p1, round_end)
    if round_end == "X"
      if p1 == "A"
        "Z"
      elsif p1 == "B"
        "X"
      else
        "Y"
      end
    elsif round_end == "Y"
      if p1 == "A"
        "X"
      elsif p1 == "B"
        "Y"
      else
        "Z"
      end
    else
      if p1 == "A"
        "Y"
      elsif p1 == "B"
        "Z"
      else
        "X"
      end
    end
  end
end
