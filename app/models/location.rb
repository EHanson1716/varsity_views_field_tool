class Location < ActiveRecord::Base
    has_many :games
    validates :short_name, :presence => true
    validates :long_name, :presence => true
    validates :address, :presence => true
    validates :city, :presence => true
    validates :state, :presence => true
end
