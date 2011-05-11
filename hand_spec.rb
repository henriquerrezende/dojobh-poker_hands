require 'hand.rb'
require 'card.rb'

describe Hand do

	before(:each) do
		@hand = Hand.new ['2D','TH','AS','2C','7D']
	end

	it "should draw with oponent" do 
		(@hand.win? @hand).should == 'draw'
	end
	
	it "should return hand's win" do 
		looserHand = Hand.new ['2D','TH','3D','2C','7D']
		(@hand.win? looserHand).should be_true 
	end

	it "should return higher card on the hand" do
		card = Card.new 'AS'
		(@hand.higherCard == card).should be_true
	end	

	it "should have five cards" do
		@hand.cards.length.should == 5
	end

end