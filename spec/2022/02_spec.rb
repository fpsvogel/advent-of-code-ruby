RSpec.describe Year2022::Day02 do
  let(:input) {
    StringIO.new(
      <<~IN
        A Y
        B X
        C Z
      IN
    )
  }

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(15)
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq(12)
  end
end
