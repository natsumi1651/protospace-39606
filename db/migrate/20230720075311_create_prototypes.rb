class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :catch_copy, null: false
      t.text :concept, null: false
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.timestamps
    end
  end
end

# 大元のマイグレーションを確認する
# 不要なremoveとかは消す（右クリックから）
# ターミナルで、
# rails db:migrate:reset