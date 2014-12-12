class UserChirps < ActiveRecord::Migration
  def change
    create_table :user_chirps do |t|
      t.belongs_to :user
      t.belongs_to :chirp

      t.timestamps
    end
  end
end
