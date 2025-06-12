RSpec.describe Year2015::Day06 do
  let(:input) {
    StringIO.new(
      <<~IN
        turn on 0,1 through 999,1
        turn off 499,1 through 500,1
        toggle 498,1 through 501,2
      IN
    )
  }

  it "solves Part One" do
    expect(subject.part_1(input)).to eq(1002)
  end

  it "solves Part Two" do
    expect(subject.part_2(input)).to eq(1014)
  end
end
