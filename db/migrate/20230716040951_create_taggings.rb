class CreateTaggings < ActiveRecord::Migration[6.1]
  def change
    create_table :taggings do |t|

      t.timestamps
    end

  end
end
