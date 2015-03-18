class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= Coach.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def redirect_if_not_logged_in
    redirect_to root_path unless logged_in?
  end

  def redirect_if_logged_in
    if current_user
      redirect_to root_path
    end
  end

  def set_session_user_id(user_id, remember_me = false)
    session[:user_id] = user_id
    session[:expires_at] = remember_me ? 1.year.from_now.to_i : 2.weeks.from_now.to_i
  end
end
