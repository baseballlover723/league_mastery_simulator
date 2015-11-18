class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.integer :x
      t.integer :y
      t.string :rank
      t.integer :score
      t.string :position
      t.timestamps null: false
    end
  end
end
