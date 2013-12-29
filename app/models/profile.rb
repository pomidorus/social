class Profile < ActiveRecord::Base
  has_many :benefit_rights
  has_many :benefits, through: :benefit_rights
end
