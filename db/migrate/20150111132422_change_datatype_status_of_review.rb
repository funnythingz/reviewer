class ChangeDatatypeStatusOfReview < ActiveRecord::Migration
  def change
    change_column :reviews, :published, :boolean
  end
end
