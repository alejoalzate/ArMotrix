class AccountReceivable < ActiveRecord::Base
  attr_accessible :from, :identification, :name, :to
	def self.search(search)
		where("identification like '%#{search}%' or name like '%#{search}%'")
	end

end
