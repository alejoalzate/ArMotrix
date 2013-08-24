class WorkOrder < ActiveRecord::Base
  belongs_to :document
  belongs_to :inventory
  attr_accessible :address, :brand, :client_feedback, :color, :date_received, :delivery_date, :diamond, :expiration_date, :mileage, :model, :movil, :parts_total_value, :phone, :plate, :state, :total_labor, :type, :vehicle, :document_id, :inventory_id
    def self.search(search)
		where("address like '%#{search}%' or brand like '%#{search}%' or client_feedback like '%#{search}%' or color like '%#{search}%' or diamond like '%#{search}%'  or mileage like '%#{search}%' or model like '%#{search}%' or movil like '%#{search}%' or parts_total_value like '%#{search}%' or phone like '%#{search}%' or plate like '%#{search}%' or total_labor like '%#{search}%' or type like '%#{search}%' or vehicle like '%#{search}%'")
	end
end
