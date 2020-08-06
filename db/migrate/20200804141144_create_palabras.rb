class CreatePalabras < ActiveRecord::Migration[5.2]
  def change
    create_table :palabras do |t|
      t.string :word
      t.string :clase
      t.references :partida, foreign_key: true

      t.timestamps
    end
  end
end
