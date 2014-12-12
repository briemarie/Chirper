get '/' do
  @session = session[:user_id]
  @chirps = Chirp.last(10)
  @users = User.all
  erb :index
end

#----------- SESSIONS -----------

get '/sessions/new' do
  erb :sign_in
end

post '/sessions' do
  @user = User.find_by(email: params[:email])
  if @user
    if  @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/'
    else
      @error = "wrong password"
      erb :sign_in
    end
  else
    @error = "wrong email"
      erb :sign_in
  end
end

delete '/sessions/:id' do
  session[:user_id] = nil
  redirect '/'
end

#----------- USERS -----------

get '/users/new' do
  erb :sign_up
end

post '/users' do
  p params[:user]
  @user = User.create(params[:user])
  # @user.save
  session[:user_id] = @user.id
  redirect '/'
end
