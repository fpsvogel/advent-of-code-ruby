# https://adventofcode.com/2015/day/7
module Year2015
  class Day07
    REGEX = %r{\A
      (?:
        (?:(?<value_1_source>[a-z\d]+)\s)?
        (?:(?<operator>AND|OR|LSHIFT|RSHIFT|NOT)\s)?
        (?:(?<value_2_source>[a-z\d]+)\s)?
      )
      ->\s
      (?<destination>[a-z]+)
    \z}x

    BINARY_OPERATORS = {
      "AND" => :&,
      "OR" => :|,
      "LSHIFT" => :<<,
      "RSHIFT" => :>>
    }.freeze

    def part_1(input_file)
      lines = input_file.readlines(chomp: true)
      wires = wires(lines)

      return wires if running_in_specs?
      wires[:a]
    end

    def part_2(input_file)
      lines = input_file.readlines(chomp: true)
      wires = wires(lines)
      wires = wires(lines, b_override: wires[:a])

      wires[:a]
    end

    private

    def running_in_specs?
      caller.any? { |line| line.include?("_spec.rb") }
    end

    def wires(lines, b_override: nil)
      wires = {}

      lines.each do |line|
        match = line.match(REGEX)

        wires[match[:destination].to_sym] = match
          .named_captures
          .transform_keys(&:to_sym)
          .except(:destination)
      end

      wires.keys.each do |destination|
        resolve(destination, wires:, b_override:)
      end

      wires
    end

    def resolve(destination, wires:, b_override:)
      expression = wires[destination]
      return b_override if destination == :b && b_override
      return expression if expression.is_a?(Integer)
      value_1_source, operator, value_2_source = expression.values

      if value_1_source
        value_1 = Integer(value_1_source, exception: false) ||
          resolve(value_1_source.to_sym, wires:, b_override:)
      end
      if value_2_source
        value_2 = Integer(value_2_source, exception: false) ||
          resolve(value_2_source.to_sym, wires:, b_override:)
      end

      wires[destination] =
        if value_1 && value_2
          value_1.send(BINARY_OPERATORS[operator], value_2)
        elsif operator == "NOT"
          ~value_2 & 0xFFFF
        else
          value_1
        end
    end
  end
end
