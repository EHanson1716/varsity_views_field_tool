class Game < ActiveRecord::Base
  belongs_to :photographer
  belongs_to :location
  belongs_to :sport
  belongs_to :school
  belongs_to :level
  belongs_to :gender
  belongs_to :school
  belongs_to :event_title



  validates :date, :presence => true
  validates :location_id, :presence => true
  validates :sport_id, :presence => true
  validates :level_id, :presence => true
  validates :gender_id, :presence => true
  validates :home_id, :presence => true
  validates :away_id, :presence => true
end
