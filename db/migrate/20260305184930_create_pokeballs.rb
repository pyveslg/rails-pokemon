class CreatePokeballs < ActiveRecord::Migration[8.1]
  def change
    create_table :pokeballs do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :trainer, null: false, foreign_key: true
      t.date :caught_on
      t.string :location

      t.timestamps
    end
  end
end
