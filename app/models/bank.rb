class Bank < ActiveRecord::Base
  attr_accessible :acronym, :address, :description, :name, :phone
	def self.search(search)
		where("acronym like  '%#{search}%' or address like '%#{search}%' or description like '%#{search}%' or name like '%#{search}%' or phone like '%#{search}%'")
	end
end
