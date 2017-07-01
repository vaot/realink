module Authenticable
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to '/login' unless current_user
  end

  def user_signed_in?
    current_user.present?
  end

  def self.included(base)
    base.send :helper_method, :user_signed_in?
    base.send :helper_method, :current_user
  end
end
