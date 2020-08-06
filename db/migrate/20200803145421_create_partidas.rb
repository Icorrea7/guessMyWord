class CreatePartidas < ActiveRecord::Migration[5.2]
  def change
    create_table :partidas do |t|
      t.integer :code
      t.integer :player_number
      t.integer :words_number
      t.decimal :game_time

      t.timestamps
    end
  end
end
