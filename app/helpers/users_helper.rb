module UsersHelper
  #基本時間などの値を、指定書式にフォーマットしてかえす
  
  def format_basic_time(datetime)
    format("%.2f",((datetime.hour*60)+datetime.min)/60.0)
  end  
end
