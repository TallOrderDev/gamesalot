class CreateBalls < ActiveRecord::Migration[5.0]
  def change
    create_table :balls do |t|
      t.string :number
      t.integer :weight
      t.belongs_to :scale_game, foreign_key: true

      t.timestamps
    end
  end
end
