class FormOfPayment < ActiveRecord::Base
  attr_accessible :acronym, :name
    def self.search(search)
		where("name like '%#{search}%' or acronym like '%#{search}%'")
	end
end
