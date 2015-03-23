require_relative 'card.rb'

class Hand
	def initialize arrCards
		@cards = []
		arrCards.each do |strCard|
			card = Card.new strCard.to_s
			@cards << card
		end
	end
	
	def cards
		@cards
	end
	
	def higherCard
		higher = @cards[0]
		@cards.each do |card|
			if card.greaterThan? higher
				higher = card
			end
		end
		higher
	end
	
	def win? oponentHand
		self.higherCard.greaterThan(oponentHand.higherCard)
	end
end
