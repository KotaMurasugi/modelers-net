class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|

      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
    # favoriteにおいてuser_idとpost_idの組み合わせを一意姓のあるものにする
    add_index :favorites ,[:user_id, :post_id], unique: true
  end
end
