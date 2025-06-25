RSpec.describe Year2015::Day07 do
  let(:input) do
    StringIO.new(
      <<~END
        123 -> x
        456 -> y
        x AND y -> d
        x OR y -> e
        x LSHIFT 2 -> f
        y RSHIFT 2 -> g
        NOT x -> h
        NOT y -> i
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(
      {
        d: 72,
        e: 507,
        f: 492,
        g: 114,
        h: 65_412,
        i: 65_079,
        x: 123,
        y: 456
      }
    )
  end
end
