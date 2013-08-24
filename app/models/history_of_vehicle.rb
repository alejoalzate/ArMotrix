class HistoryOfVehicle < ActiveRecord::Base
  attr_accessible :customer, :date, :plate
    def self.search(search)
		where("customer like '%#{search}%' or plate like '%#{search}%'")
	end
end
