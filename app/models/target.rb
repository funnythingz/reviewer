class Target < ActiveRecord::Base

  paginates_per 20

  has_many :review
  belongs_to :area

  validates :name, presence: true
  validates :area_id, presence: true
end
