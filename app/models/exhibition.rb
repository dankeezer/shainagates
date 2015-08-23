class Exhibition < ActiveRecord::Base

	attr_accessible :name, :starts_at, :ends_at, :location, :link
	validates_presence_of :name, :starts_at, :location

end
