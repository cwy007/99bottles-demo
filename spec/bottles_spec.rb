RSpec.describe "Bottles" do
  describe "#verse" do
    context "99" do
      it "returns correct verse" do
        expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
        VERSE

        expect(Bottles.new.verse(99)).to eq(expected)
      end
    end

    context "89" do
      it "returns correct verse" do
        expected = <<-VERSE
89 bottles of beer on the wall, 89 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
        VERSE

        expect(Bottles.new.verse(89)).to eq(expected)
      end
    end

    context "2" do
      it "returns correct verse" do
        expected = <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
        VERSE

        expect(Bottles.new.verse(2)).to eq(expected)
      end
    end
  end
end
