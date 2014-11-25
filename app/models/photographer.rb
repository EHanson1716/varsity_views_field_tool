class Photographer < ActiveRecord::Base
  has_many :games
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true
end
