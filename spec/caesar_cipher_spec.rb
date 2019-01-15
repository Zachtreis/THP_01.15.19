require_relative '../lib/caesar_cipher'

describe "#caesar_cipher" do
    it "should cipher my code by replacing each letter by the letter that is n rows behind it (when it reaches 'z' it goes back to 'a'" do
        expect(caesar_cipher("Bonjour, je m'appelle Zach!", 28)).to eq("Dqplqwt, lg o'crrgnng Bcej!")
    end
end

