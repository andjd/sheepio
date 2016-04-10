class Sheeple < ActiveRecord::Base
	#validations . . . 

	#authentication . . .

	has_many :heardings

	has_many :bleets

	has_many :hearded_bleets,
	  through: :heardings,
	  source: :bleet
end