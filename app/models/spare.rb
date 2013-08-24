class Spare < ActiveRecord::Base
  belongs_to :cost_center
  attr_accessible :description, :iva, :purchase_price, :quantity, :selling_price, :cost_center_id
    def self.search(search)
		where("description like '%#{search}%' or iva like '%#{search}%' or purchase_price like '%#{search}%' or quantity like '%#{search}%' or selling_price like '%#{search}%'")
	end
end
