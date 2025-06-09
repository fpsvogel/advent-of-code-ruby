RSpec.describe Year2015::Day05 do
  let(:input_1) {
    StringIO.new(
      <<~IN
        ugknbfddgicrmopn
        aaa
        jchzalrnumimnmhp
        haegwjzuvuyypxyu
        dvszwmarrgswjxmb
      IN
    )
  }

  let(:input_2) {
    StringIO.new(
      <<~IN
        qjhvhtzxzqqjkmpb
        xxyxx
        uurcxstgmygtbstg
        ieodomkazucvgmuy
      IN
    )
  }

  it "solves Part One" do
    expect(subject.part_1(input_1)).to eq(2)
  end

  it "solves Part Two" do
    expect(subject.part_2(input_2)).to eq(2)
  end
end
