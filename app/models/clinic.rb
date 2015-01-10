class Clinic < ActiveRecord::Base

  has_many :review

  validates :name, presence: true
  validates :area_id, presence: true
end
