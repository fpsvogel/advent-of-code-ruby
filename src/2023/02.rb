# https://adventofcode.com/2023/day/2
module Year2023
  class Day02
    def part_1(input_file)
      lines = input_file.readlines(chomp: true)

      possible = {red: 12, green: 13, blue: 14}

      games(lines).filter_map.with_index { |rounds, i|
        game_possible = rounds.all? { |colors|
          colors.all? { |color, count|
            count <= possible[color]
          }
        }

        i + 1 if game_possible
      }
        .sum
    end

    def part_2(input_file)
      lines = input_file.readlines(chomp: true)

      mins = games(lines).map { |rounds|
        red = rounds.map { it[:red] || 0 }.max
        green = rounds.map { it[:green] || 0 }.max
        blue = rounds.map { it[:blue] || 0 }.max

        {red:, green:, blue:}
      }

      mins.map { it.values.reduce(:*) }.sum
    end

    private

    def games(lines)
      lines.map { |line|
        line
          .split(":")
          .last
          .split(";")
          .map { |round|
            round
              .split(",")
              .map { |count_and_color|
                count_and_color.split(" ").reverse
              }
              .to_h
              .transform_keys(&:to_sym)
              .transform_values(&:to_i)
          }
      }
    end
  end
end
