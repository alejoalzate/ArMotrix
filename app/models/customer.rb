class Customer < ActiveRecord::Base
  belongs_to :document
  attr_accessible :address, :cell_phone, :credit_quota, :email, :name, :number_document, :phone, :restricted_quota, :space_available, :state, :document_id
    def self.search(search)
		where("address like '%#{search}%' or cell_phone like '%#{search}%' or credit_quota like '%#{search}%' or email like '%#{search}%' or name like '%#{search}%' or number_document like '%#{search}%' or phone like '%#{search}%' or restricted_quota like '%#{search}%' or space_available like '%#{search}%'")
	end

  	validates :address, :presence => true, :uniqueness => true
    validates :cell_phone, :presence => true, :uniqueness => true
    validates :credit_quota, :presence => true
    validates :email, :uniqueness => true, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
    validates :name, :presence => true 
    validates :number_document, :presence => true
    validates :phone, :presence => true, :uniqueness => true
    validates :restricted_quota, :presence => true
    validates :space_available, :presence => true
    validates :state, :presence => true 
    validates :document_id, :presence => true
    
end
