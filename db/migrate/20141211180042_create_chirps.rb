class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :content
      t.integer :favorited


      t.timestamps
    end
  end
end
