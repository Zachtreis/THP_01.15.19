require_relative '../lib/multiple'

describe "#is_multiple_of_3_or_5" do
    it "should return true when the integer tested is a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5(3)).to eq(true)
        expect(is_multiple_of_3_or_5(5)).to eq(true)
        expect(is_multiple_of_3_or_5(51)).to eq(true)
        expect(is_multiple_of_3_or_5(45)).to eq(true)
    end

    it "should return false when the integer tested is NOT a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5(0)).to eq(false)
        expect(is_multiple_of_3_or_5(-3)).to eq(false)
        expect(is_multiple_of_3_or_5(4)).to eq(false)
        expect(is_multiple_of_3_or_5(98)).to eq(false)
    end
end

describe "#sum_of_3_and_5_multiple" do
    it "should return the sum of all multiple of 3 and 5 under the integer (excluded) given as argument" do
        expect(sum_of_3_and_5_multiple(0)).to eq(0)
        expect(sum_of_3_and_5_multiple(1)).to eq(0)
        expect(sum_of_3_and_5_multiple(2)).to eq(0)
        expect(sum_of_3_and_5_multiple(4)).to eq(3)
        expect(sum_of_3_and_5_multiple(10)).to eq(23)
        expect(sum_of_3_and_5_multiple(11)).to eq(33)
    end

    it "should return un message d'erreur si le nombre donne en argument n'est pas un entier positif" do
        expect(sum_of_3_and_5_multiple(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
        expect(sum_of_3_and_5_multiple(1.25)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
        expect(sum_of_3_and_5_multiple("3")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
        expect(sum_of_3_and_5_multiple("bonjour")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    end
end
