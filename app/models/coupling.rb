class Coupling < ActiveRecord::Base
  validates :description, :presence => true

  has_many :tubings , :class_name => "Tubing", :foreign_key => "coupling_id"
end
