module SessionsHelper
  def logged_in?
    session[:id]
  end

  def logout
    session[:id] = nil
  end
end
