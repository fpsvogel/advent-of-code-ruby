# https://adventofcode.com/2022/day/2
module Year2022
  class Day02
    def part_1(input_file)
      rounds = input_file.readlines(chomp: true).map(&:split)

      rounds.sum { |opp, you|
        opp = %w[A B C].index(opp)
        you = %w[X Y Z].index(you)

        score = you + 1
        if opp == you
          score += 3 # draw
        elsif (opp + 1) % 3 == you
          score += 6 # win
        end

        score
      }
    end

    def part_2(input_file)
      rounds = input_file.readlines(chomp: true).map(&:split)

      rounds.sum { |opp, you|
        opp = %w[A B C].index(opp)

        case you
        when "X" # lose
          1 + (opp - 1) % 3
        when "Y" # draw
          1 + opp + 3
        when "Z" # win
          1 + (opp + 1) % 3 + 6
        end
      }
    end
  end
end
