class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title,          null: false
      t.text :text,             null: false
      t.integer :user_id,       null: false
      t.integer :comment_id,    null: false
      t.integer :like_id,       null: false
      t.integer :calendar_id,   null: false

      t.timestamps
    end
  end
end
