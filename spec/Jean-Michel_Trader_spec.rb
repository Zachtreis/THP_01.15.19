require_relative '../lib/Jean-Michel_Trader'

describe "#day_trader" do
    it "should return an array including the index of the day of purchase and the index of the day of sale in order to make the most profit" do
        expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
        expect(day_trader([32, 56, 12, 98, 43, 23, 56, 4, 90])).to eq([2, 3])
        #En cas d'egalite, il faut faire la revente qui a lieu le plus tot
    end
end