class CashReceipt < ActiveRecord::Base
  belongs_to :payment
  belongs_to :bank_origin
  belongs_to :destination_bank
  attr_accessible :concept, :customer, :date, :movement_number, :observations, :retention, :state, :value, :payment_id, :bank_origin_id, :destination_bank_id

    def self.search(search)
		where("concept like '%#{search}%' or customer like '%#{search}%' or movement_number like '%#{search}%' or observations like '%#{search}%' or value like '%#{search}%'")
	end

end
