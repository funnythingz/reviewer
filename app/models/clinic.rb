class Clinic < ActiveRecord::Base

  paginates_per 20

  has_many :review

  validates :name, presence: true
  validates :area_id, presence: true
end
