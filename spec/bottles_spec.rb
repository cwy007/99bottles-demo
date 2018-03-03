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
Take one down and pass it around, 88 bottles of beer on the wall.
        VERSE

        expect(Bottles.new.verse(89)).to eq(expected)
      end
    end

    context "2" do
      it "returns correct verse" do
        expected = <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
        VERSE

        expect(Bottles.new.verse(2)).to eq(expected)
      end
    end

    context "1" do
      it "returns correct verse" do
        expected = <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
        VERSE

        expect(Bottles.new.verse(1)).to eq(expected)
      end
    end

    context "0" do
      it "returns correct verse" do
        expected = <<-VERSE
No more bottles of beer on the wall, No more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
        VERSE

        expect(Bottles.new.verse(0)).to eq(expected)
      end
    end
  end

  describe "#verses" do
    context "99 and 98" do
      it "returns correct verses" do
        expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.
        VERSE

        expect(Bottles.new.verses(99, 98)).to eq(expected)
      end
    end
  end
end
