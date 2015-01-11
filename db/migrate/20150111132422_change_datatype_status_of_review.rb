class ChangeDatatypeStatusOfReview < ActiveRecord::Migration
  def change
    rename_column :reviews, :status, :published
    change_column :reviews, :published, :boolean
  end
end
