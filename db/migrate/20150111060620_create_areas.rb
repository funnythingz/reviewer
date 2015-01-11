class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer :top_id
      t.string :name
      t.boolean :top_flg

      t.timestamps null: false
    end
  end
end
