class Review < ActiveRecord::Base

  paginates_per 20

  belongs_to :clinic
  has_one :clinic

  validates :reviewer, presence: { message: '名前を入力してください' }
  validates :mail, presence: { message: 'メールアドレスを入力してください' }
  validates :clinic_id, presence: true
  validates :status, presence: true
  validates :action, presence: true
  validates :comment, length: { maximum: 1000}, presence: { message: 'コメントを入力してください' }

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
  scope :desc,      -> { order(created_at: :desc) }
end
