class CreateScaleGames < ActiveRecord::Migration[5.0]
  def change
    create_table :scale_games do |t|
      t.integer :weigh_count
      t.integer :ball_count
      t.string :succeeded

      t.timestamps
    end
  end
end
