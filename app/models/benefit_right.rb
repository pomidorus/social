class BenefitRight < ActiveRecord::Base
  belongs_to :benefit
  belongs_to :profile
end
