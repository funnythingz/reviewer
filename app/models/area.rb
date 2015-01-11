class Area < ActiveRecord::Base

  def is_top?
    top_flg
  end

  scope :top, -> { where(top_flg: 1) }
end
