class First < ActiveRecord::Migration
  def change
  	create_table :sheeple do |s|
  		s.string :username, uniq: true
  		s.string :email, null: false
  		s.string :hashed_and_salted_password, null: false

  		# . . . 

  		s.timestamps
  	end

  	create_table :bleets do |b|
  		b.string :text, limit: 140
  		b.string :image_link

  		# . . .

  		b.timestamps
  	end

  	create_join_table  :sheeple, :bleets, 
  					     table_name: :heardings do |h| 
		h.timestamps 
	end

  end
end
