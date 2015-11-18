class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.integer :x
      t.integer :y
      t.string :rank
      t.string :position
      t.integer :wins
      t.integer :losses
      t.timestamps null: false
    end
  end
end
