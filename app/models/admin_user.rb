class AdminUser < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable, :validatable
end