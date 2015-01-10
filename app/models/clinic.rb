class Clinic < ActiveRecord::Base
  validates :name, presence: true
  validates :area_id, presence: true
end
