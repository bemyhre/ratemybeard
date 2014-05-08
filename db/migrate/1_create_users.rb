class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :about
      t.string :tagline
      t.string :instagram_id
      t.string :profile_pic
      t.timestamps
    end
  end
end


