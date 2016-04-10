class BleetController < ApplicationController
	def index
		@bleets = Bleet.find_by_sql <<-SQL
		        SELECT bleets.*
		        FROM bleets
		        LEFT JOIN (
		            SELECT
		        	b.id,
		        	COALESCE(SUM(1 / (1 + exp((
	        	      	    DATE_PART('day', current_timestamp - h.created_at) * 24 +
	        	      	    DATE_PART('hour', current_timestamp - h.created_at )
	        	      	    ) - 40) / 8 )), 0) AS s
		            FROM bleets AS b
		            LEFT JOIN heardings AS h
		            	ON b.id = b.bleet_id
		            GROUP BY e.id
		        ) AS score
		        ON bleets.id = score.id
		        ORDER BY score.s DESC, bleets.created_at DESC
		SQL

		render json: @bleets
	end
end
