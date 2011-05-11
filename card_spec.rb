require 'card.rb'

describe Card do

	before(:each) do
		@card = Card.new 'TH'
	end

	it "should return value equals to" do
		card = Card.new 'TS'
		card.value.should == 10
		card.suit.should == 'S'
		
		card = Card.new '2S'
		card.value.should == 2
		card.suit.should == 'S'
	end
	
	it "should found higher card" do
		cardWinner = Card.new 'AS'
		cardLoser =  Card.new 'TD'
		cardWinner.greaterThan?(cardLoser).should be_true
	end
	
	it "should be equal" do
		cardOne = Card.new 'JS'
		cardTwo = Card.new 'JS'
		(cardOne==cardTwo).should be_true
	end
	
	it "should equal card" do
		card = Card.new 'TS'
		card.greaterThan?(card).should be_false
	end
	
	it "should draw" do
		@card.beat(@card).should == "draw"
	end
	
end