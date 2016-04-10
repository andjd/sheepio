class Bleet < ActiveRecord::Base

	# validations . . .

	belongs_to :sheeple

	has_many :heardings

	has_many :heardmates, 
	  through: :heardings, 
	  source: :sheeple

	def trending_score
		heardings.all.reduce(0) { |score, item| score + Bleet.weighted_value(item) }
	end

	def self.weighted_value(item)
		1 / (1 + (Math::E**((((Time.now - item.created_at) / 3600) - 40) / 8)))
	end

end
