class Level < ActiveRecord::Base
  validates :level, :presence => true
end
