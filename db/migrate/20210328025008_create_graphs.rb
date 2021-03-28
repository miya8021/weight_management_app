class CreateGraphs < ActiveRecord::Migration[6.1]
  def change
    create_table :graphs do |t|
      t.date :date, null: false
      t.float :weight, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    # 一人のユーザーが同じ日付のデータを複数記録できないようにする
    add_index :graphs, %i[user_id date], unique: true
  end
end