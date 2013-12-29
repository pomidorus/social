class Benefit < ActiveRecord::Base
  belongs_to :benefit_category
  has_many :benefit_rights
  has_many :profiles, through: :benefit_rights
end
