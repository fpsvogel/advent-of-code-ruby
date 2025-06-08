RSpec.describe Year2015::Day04 do
  let(:input) {
    StringIO.new(
      <<~IN
        abcdef
      IN
    )
  }

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(609043)
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq(6742839)
  end
end
