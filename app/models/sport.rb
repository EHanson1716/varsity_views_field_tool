class Sport < ActiveRecord::Base
    has_many :games
    validates :sport, :presence => true
end
