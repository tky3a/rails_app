module ApplicationHelper

###ブラウザ（ページ）のタイトル名表示を設定
 #page_titleが空の場合base_titleを表示
 #違う場合はbase_title | page_titleで表示する
  def full_title(page_title)
    base_title = "Ruby on Rails Tutotial"
      if page_title.empty? #empty?で配列が空であればtrue、1つ以上の要素があればfalseを返す
        base_title
      else
        "#{base_title} | #{page_title}"
      end
  end
end
