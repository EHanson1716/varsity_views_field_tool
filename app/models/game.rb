class Game < ActiveRecord::Base
  belongs_to :photographer
  belongs_to :location
  belongs_to :sport
  belongs_to :school
  belongs_to :level
  belongs_to :gender
  belongs_to :school
  belongs_to :event_title
  belongs_to :home, :class_name => "School", :foreign_key => "home_id"
  belongs_to :away, :class_name => "School", :foreign_key => "away_id"



  validates :date, :presence => true
  validates :location, :presence => true
  validates :sport, :presence => true
  validates :level, :presence => true
  validates :gender, :presence => true
  validates :home, :presence => true
  validates :away, :presence => true
end
