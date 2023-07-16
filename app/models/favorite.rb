class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  # 重複したお気に入り登録が出来ないようにするバリデーション
  validates :user_id, uniqueness: { scope: :post_id}
end
