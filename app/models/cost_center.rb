class CostCenter < ActiveRecord::Base
  attr_accessible :code, :cost_center, :state
    def self.search(search)
		where("code like '%#{search}%' or cost_center like '%#{search}%'")
	end
end
