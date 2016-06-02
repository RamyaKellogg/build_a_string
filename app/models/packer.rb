class Packer < ActiveRecord::Base
  validates :description, :presence => true

  has_many :tubings , :class_name => "Tubing", :foreign_key => "packer_id"
end
