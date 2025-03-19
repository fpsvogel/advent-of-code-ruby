RSpec.describe Year2024::Day01 do
  let(:input) {
    StringIO.new(
      <<~IN
        3 4
        4 3
        2 5
        1 3
        3 9
        3 3
      IN
    )
  }

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(11)
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq(31)
  end
end
