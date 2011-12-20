class Opening < ActiveRecord::Base
  attr_accessible :position, :objective, :grizzard, :skill, :company, :pid
  validates :pid, :presence => true,
  				  :uniqueness => true
 # has_friendly_id :name, :use_slug => true				  
end
