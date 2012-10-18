module DecksHelper
	def pdf_deck_path(deck)
		deck_path(deck)+".pdf"
	end

	def greatest_demo(num1,num2,num3,num4,num5,num6)
		[num1,num2,num3,num4,num5,num6].max
	end

end
