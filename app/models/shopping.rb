class Shopping < ActiveRecord::Base
  attr_accessible :concept, :date, :discount, :iva, :quantity, :state, :supplier, :value, :vendor_invoice
    def self.search(search)
		where("concept like '%#{search}%' or discount like '%#{search}%' or iva like '%#{search}%' or quantity like '%#{search}%' or supplier like '%#{search}%' or value like '%#{search}%' or vendor_invoice like '%#{search}%'")
	end
end
