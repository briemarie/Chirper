helpers do

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
      return @current_user
    else
      nil
    end
  end

end
