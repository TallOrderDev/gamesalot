class CreateScales < ActiveRecord::Migration[5.0]
  def change
    create_table :scales do |t|
      t.string :name
      t.belongs_to :scale_game, foreign_key: true

      t.timestamps
    end
  end
end
