class AreaDecorator < Draper::Decorator
  delegate_all

  def top
    Area.find_by(id: object.top_id)
  end

end
