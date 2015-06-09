module SessionsHelper

  def login user
    session[:name] = user.name
  end

  def current_user
    @current_user ||= User.find_by(name: session[:name])
  end

  def authenticate_user
    @current_user = current_user
    if @current_user.nil?
      redirect_to login_path
    end
  end

end
