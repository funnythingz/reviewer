class Review < ActiveRecord::Base

  validates :reviewer, presence: true
  validates :mail, presence: true
  validates :status, presence: true
  validates :action, presence: true
  validates :comment, length: { maximum: 1000}, presence: true

  def is_published?
    status == 'published'
  end

  def is_draft?
    status == 'draft'
  end

  scope :published, -> { where(status: 'published') }
  scope :draft,     -> { where(status: 'draft') }
  scope :good,      -> { where(action: 'good') }
  scope :bad,       -> { where(action: 'bad') }
end
