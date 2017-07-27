module Authenticable
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to new_session_path unless current_user
  end

  def user_signed_in?
    current_user.present?
  end

  def ensure_signed_in
    unless user_signed_in?
      render json: [], status: :unauthorized
      return
    end
  end

  def self.included(base)
    base.send :helper_method, :user_signed_in?
    base.send :helper_method, :current_user
  end
end
