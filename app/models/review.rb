class Review < ActiveRecord::Base

  paginates_per 20

  belongs_to :target

  validates :reviewer, presence: { message: '名前を入力してください' }
  validates :mail, email_format: { message: 'メールアドレスを正しく入力してください' }
  validates :target_id, presence: true
  validates :action, presence: true
  validates :comment, length: { maximum: 1000}, presence: { message: 'コメントを入力してください' }

  def is_published?
    published == true
  end

  def is_draft?
    published == false
  end

  scope :published, -> { where(published: true) }
  scope :draft,     -> { where(published: false) }
  scope :good,      -> { where(action: 'good') }
  scope :bad,       -> { where(action: 'bad') }
  scope :desc,      -> { order(created_at: :desc) }
end
