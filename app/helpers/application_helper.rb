module ApplicationHelper
  
  #ページごとのタイトル
  
  def full_title(page_title="")  #メゾット名と引数定義
    base_title="勤怠システム"    
    #変数代入
    
    if page_title.empty?  #引数の論理値確認
      base_title　　　　　　#page_titleからの時base_title返す
    else
       page_title+"|"+base_title #文字列結合
    end    
     
  end
end
