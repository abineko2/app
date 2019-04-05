module SessionsHelper

# 引数に渡されたユーザーでログインする
  def log_in(user)
    session[:user_id]=user.id
  end
# 現在ログイン中のユーザーを返す  
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id:session[:user_id])
    end    
  end
  
  
#渡されたユーザーがログインずみかどうか(true/false)
def current_user?(user)
  user==current_user
end


# 記憶しているURL (もしくはデフォルト値) にリダイレクトする
def redirect_back_or(default)
  redirect_to(session[:fowording_url]||default)
  session.delete(:fowording_url)
end  

#アクセスしようとしたurl記録
def store_location
  session[:fowording_url]=request.original_url if request.get?
end
  
  
#ログアウトする
  def log_out
    session.delete(:user_id)
    @current_user=nil
    
  end
#ログインしていればtrue,その他false
   def logged_in?
     !current_user.nil?
   end
end