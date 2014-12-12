get '/users/:id/chirp' do
  Chirp.all
  erb :chirp
end

post '/users/:id/chirp' do
  User.id = params[:id]
  Chirp.create(content: params[:content])

  erb :chirp
  redirect '/users/:id'
end



class UserChirps < ActiveRecord::Migration
  def change
    create_table :user_chirps do |t|
      t.belongs_to :user
      t.belongs_to :chirp
      t.timestamps
    end
  end
end

class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :content
      t.integer :favorited
      t.timestamps
    end
  end
end
