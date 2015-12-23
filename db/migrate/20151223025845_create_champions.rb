class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :name
      t.decimal  "ad", precision: 16, scale: 8
      t.decimal  "ap", precision: 16, scale: 8
      t.decimal  "armor", precision: 16, scale: 8
      t.decimal  "mr", precision: 16, scale: 8
      t.decimal  "hp", precision: 16, scale: 8
      t.decimal  "crit", precision: 1, scale: 8
      t.decimal  "adPerLv", precision: 16, scale: 8
      t.decimal  "apPerLv", precision: 16, scale: 8
      t.decimal  "armorPerLv", precision: 16, scale: 8
      t.decimal  "mrPerLv", precision: 16, scale: 8
      t.decimal  "hpPerLv", precision: 16, scale: 8
      t.decimal  "critPerLv", precision: 16, scale: 8
      t.timestamps null: false
    end
  end
end
