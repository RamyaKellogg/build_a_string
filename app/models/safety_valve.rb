class SafetyValve < ActiveRecord::Base
  validates :description, :presence => true

  has_many :tubings , :class_name => "Tubing", :foreign_key => "safety_valve_id"
end
