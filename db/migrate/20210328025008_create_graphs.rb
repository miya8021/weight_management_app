class CreateGraphs < ActiveRecord::Migration[6.1]
  def change
    create_table :graphs do |t|
      t.date :date
      t.float :weight
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
