class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer :parent_id
      t.string :name

      t.timestamps null: false
    end
  end
end
