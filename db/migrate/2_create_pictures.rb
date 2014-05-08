class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.belongs_to :user
      t.string :title
      t.string :url
      t.string :caption
      t.integer :upvotes
      t.integer :downvotes
      t.integer :balance
      t.timestamps
    end
  end
end