class Labor < ActiveRecord::Base
  belongs_to :cost_center
  belongs_to :mechanical
  attr_accessible :description, :discount, :iva, :quantity, :sale_price, :cost_center_id, :mechanical_id
    def self.search(search)
		where("description like '%#{search}%' or discount like '%#{search}%' or iva like '%#{search}%' or quantity like '%#{search}%' or sale_price like '%#{search}%'")
	end
end
