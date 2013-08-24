class AccountPayable < ActiveRecord::Base
  attr_accessible :from, :nit, :social_reason, :to
	def self.search(search)
		where("nit like '%#{search}%' or social_reason like '%#{search}%'")
	end
end
