class Position < ActiveRecord::Base
  attr_accessible :position, :objective, :grizzard, :skill, :company, :pid
  validates :pid, :presence => true,
  				  :uniqueness => true
end
