require 'rspec'
require './lib/card'
require 'pry'

RSpec.describe Card do
  it "exists" do
    card1 = Card.new(:diamond, 'Queen', 12)

    expect(card1).to be_an_instance_of(Card)

    card2 = Card.new(:spade, '3', 3)

    expect(card2).to be_an_instance_of(Card)

    card3 = Card.new(:heart, 'Ace', 14)

    expect(card3).to be_an_instance_of(Card)
  end

  it "has readable attributes" do
    card1 = Card.new(:diamond, 'Queen', 12)

    expect(card1.suit).to eq(:diamond)
    expect(card1.value).to eq('Queen')
    expect(card1.rank).to eq(12)

    card2 = Card.new(:spade, '3', 3)

    expect(card2.suit).to eq(:spade)
    expect(card2.value).to eq('3')
    expect(card2.rank).to eq(3)

    card3 = Card.new(:heart, 'Ace', 14)

    expect(card3.suit).to eq(:heart)
    expect(card3.value).to eq('Ace')
    expect(card3.rank).to eq(14)
  end

  it "is an array" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]

    expect(cards).to eq([card1, card2, card3])
  end
end
