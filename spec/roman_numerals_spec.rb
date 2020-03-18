require "roman_numeral"

RSpec.describe RomanNumerals do
  subject(:translator) { described_class.new }

  describe "#translate" do
    context "when the numeral is 'I'" do
      let(:roman_numeral) { "I" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(1)
      end
    end

    context "when the numeral is 'II'" do
      let(:roman_numeral) { "II" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(2)
      end
    end

    context "when the numeral is 'III'" do
      let(:roman_numeral) { "III" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(3)
      end
    end

    context "when the numeral is 'IV'" do
      let(:roman_numeral) { "IV" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(4)
      end
    end

    context "when the numeral is 'V'" do
      let(:roman_numeral) { "V" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(5)
      end
    end

    context "when the numeral is 'VI'" do
      let(:roman_numeral) { "VI" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(6)
      end
    end

    context "when the numeral is 'VII'" do
      let(:roman_numeral) { "VII" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(7)
      end
    end

    context "when the numeral is 'VIII'" do
      let(:roman_numeral) { "VIII" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(8)
      end
    end

    context "when the numeral is 'IX'" do
      let(:roman_numeral) { "IX" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(9)
      end
    end

    context "when the numeral is 'X'" do
      let(:roman_numeral) { "X" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(10)
      end
    end

    context "when the numeral is 'XL'" do
      let(:roman_numeral) { "XL" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(40)
      end
    end

    context "when the numeral is 'LX'" do
      let(:roman_numeral) { "LX" }

      it "returns the correct message" do
        expect(translator.translate(roman_numeral)).to eq(60)
      end
    end

    context "when the numeral is invalid" do
      let(:roman_numeral) { "foo" }

      it "raises an InvalidNumeral exception" do
        expect { translator.translate(roman_numeral) }.to raise_error(RomanNumerals::InvalidNumeral, "Invalid Numeral")
      end
    end
  end
end
