class AreaDecorator < Draper::Decorator
  delegate_all

  def parent
    Area.find_by(id: object.parent_id)
  end

end
