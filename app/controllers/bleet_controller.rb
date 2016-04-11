class BleetController < ApplicationController
	def index
		@bleets = Bleet.joins(:bleet_trending_score).order("bleet_trending_scores.score DESC")

		render json: @bleets
	end
end
