class Mechanical < ActiveRecord::Base
  belongs_to :document
  attr_accessible :name, :state, :surname, :type, :work, :document_id
    def self.search(search)
		where("name like '%#{search}%' or surname like '%#{search}%' or work like '%#{search}%'")
	end
end
