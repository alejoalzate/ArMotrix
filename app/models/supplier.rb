class Supplier < ActiveRecord::Base
  belongs_to :document
  attr_accessible :address, :email, :phone_one, :phone_two, :social_reason, :state, :document_id
    def self.search(search)
		where("address like '%#{search}%' or email like '%#{search}%' or phone_one like '%#{search}%' or phone_two like '%#{search}%' or social_reason like '%#{search}%'")
	end
end
