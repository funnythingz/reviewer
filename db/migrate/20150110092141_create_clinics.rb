class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :group
      t.interger :area_id
      t.string :postal_code
      t.string :address
      t.string :tel
      t.string :url
      t.string :mail

      t.timestamps null: false
    end
  end
end
