RSpec.describe Year2025::Day01 do
  let(:input) do
    StringIO.new(
      <<~END
        L68
        L30
        R48
        L5
        R60
        L55
        L1
        L99
        R14
        L82
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input)).to eq 3
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq 6
  end
end
