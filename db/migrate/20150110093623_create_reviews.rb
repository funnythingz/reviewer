class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.string :mail
      t.text :comment
      t.boolean :status
      t.integer :clinic_id
      t.string :action

      t.timestamps null: false
    end
  end
end
