class Document < ActiveRecord::Base
  has_many :customers
  
  attr_accessible :acronym, :name
    def self.search(search)
		where("name like '%#{search}%' or acronym like '%#{search}%'")
	end

	validates :name, :presence => true, :uniqueness => true
    validates :acronym, :presence => true, :uniqueness => true

end
