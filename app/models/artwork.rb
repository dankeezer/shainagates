class Artwork < ActiveRecord::Base
  attr_accessible :name, :description, :filepicker_url
  validates_presence_of :name, :description, :filepicker_url
end