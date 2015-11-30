class CreateLastMatchIds < ActiveRecord::Migration
  def change
    create_table :last_match_ids do |t|
      t.integer :direction
      t.timestamps null: false
    end
  end
end
