class Position < ActiveRecord::Base
  validates_presence_of :position
  attr_accessible :position, :objective, :grizzard, :skill, :company
end
