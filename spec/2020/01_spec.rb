RSpec.describe Year2020::Day01 do
  let(:input) do
    StringIO.new(
      <<~END
        1721
        979
        366
        299
        675
        1456
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input)).to eq 514579
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq 241861950
  end
end
