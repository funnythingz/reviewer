class ReviewDecorator < Draper::Decorator
  delegate_all

  def created_at
    object.created_at.strftime("%a %m/%d/%Y")
  end
end
