class CurriculumVitae < ActiveRecord::Base
	attr_accessible :title, :body
	validates_presence_of :body
end
