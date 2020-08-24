require 'card'

describe Card do
    let(:card) {Card.new('Ace', 'Spades')}

    before(:example) do #runs before every example ('it')
        puts "Hey Im the before example"
    end

    it 'has a rank' do
        expect(card.rank).to eq('Ace')
    end

    it 'has a suit' do
        expect(card.suit).to eq('Spades')
    end

    it 'has a custom error message' do
        comparison= 'Spades'
        expect(card.suit).to eq(comparison), "Expected #{comparison}, but got something else"
    end

end

