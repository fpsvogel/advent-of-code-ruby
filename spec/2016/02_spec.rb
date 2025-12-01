RSpec.describe Year2016::Day02 do
  let(:input) do
    StringIO.new(
      <<~END
        ULL
        RRDDD
        LURDL
        UUUUD
      END
    )
  end

  it "solves Part One" do
    expect(subject.part_1(input)).to eq 1985
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq "5DB3"
  end
end
