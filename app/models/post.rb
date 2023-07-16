class Post < ApplicationRecord
  has_many :favorites ,dependent: :destroy
  belongs_to :user

  # 今サインインしているユーザーがお気に入り登録しているかを判別するメソッド
  def find_favorite(user)
    favorite.find_by(user_id: user.id)
  end
end
