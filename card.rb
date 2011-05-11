class Card

	def initialize value
		value = value.split ''
		@value = convertValue value[0]
		@suit = value[1]
	end
	
	def value
		@value
	end
	
	def suit
		@suit
	end
	
	def convertValue value
		valuesMap = {'T' => 10, 'J' => 11, 'Q' => 12, 'K' => 13, 'A' => 14}
		if valuesMap[value] != nil
			valuesMap[value]
		else
			value.to_i
		end
	end
	
	def greaterThan? card
		if self.value > card.value
			true
		else
			false
		end
	end
	
	def beat card
		if self.value > card.value
			'won'
		elsif self.value == card.value
			'draw'
		else
			'lost'
		end
	end
	
	def == card
		if (self.value == card.value) and (self.suit == card.suit)
			true
		else
			false
		end
	end
	
	private :convertValue
end
