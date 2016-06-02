class Tubing < ActiveRecord::Base
  belongs_to :coupling
  belongs_to :packer
  belongs_to :safety_valve

  validates :name, :presence => true

  validate :pressure_rating,
    :size

  def pressure_rating
    if coupling.pressure_rating < safety_valve.pressure_rating || packer.pressure_rating < safety_valve.pressure_rating
      errors.add(:pressure_rating, "of components cannot be lower than safety valve")
    end
  end

  def size
    if coupling.size != safety_valve.size || packer.size != safety_valve.size
      errors.add(:size, "of components cannot mismatch safety valve")
    end
  end

end
