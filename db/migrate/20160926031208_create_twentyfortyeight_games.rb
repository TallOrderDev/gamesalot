class CreateTwentyfortyeightGames < ActiveRecord::Migration[5.0]
  def change
    create_table :twentyfortyeight_games do |t|
      t.integer :moves

      t.timestamps
    end
  end
end
