module SessionsHelper
  def current_user #現在ログインしているユーザを取得して代入
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in? #ログインしているかを調べてtrueかfalseを返す
    !!current_user
  end
end
