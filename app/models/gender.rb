class Gender < ActiveRecord::Base
  has_many :games

  validates :gender, :presence => true
end
