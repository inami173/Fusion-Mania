module ApplicationHelper

  # ページごとの完全なタイトルを返します。
  # ページタイトルが定義されていない場合は基本タイトル“FusionManiaバンド登録サイト”を返し、定義されている場合は基本タイトルに縦棒と追加ページタイトルを追加して返します
  def full_title(page_title)
    base_title = "FusionManiaバンド登録サイト"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end