class CreateStagings < ActiveRecord::Migration
	def change
		create_table :stagings do |t|
		 	t.belongs_to :user
		  	t.belongs_to :picture
		  	t.timestamps
	   end
	end
end

