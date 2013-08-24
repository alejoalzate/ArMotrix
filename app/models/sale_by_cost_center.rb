class SaleByCostCenter < ActiveRecord::Base
  belongs_to :cost_center
  attr_accessible :from, :to, :cost_center_id
end
