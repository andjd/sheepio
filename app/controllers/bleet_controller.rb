class BleetController < ApplicationController
	def index
		@bleets = Bleet.all.sort_by(&:trending_score)
		render json: @bleets
	end
end
