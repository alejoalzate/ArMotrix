class Profile < ActiveRecord::Base
  attr_accessible :acronym, :description, :name

    def self.search(search)
		where("name like '%#{search}%' or description like '%#{search}%' or acronym like '%#{search}%'")
	end

	validates :name, :presence => true, :uniqueness => true
    validates :acronym, :presence => true, :uniqueness => true
    validates :description, :presence => true

end
