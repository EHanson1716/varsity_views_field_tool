class EventTitle < ActiveRecord::Base
  validates :title, :presence => true
end
