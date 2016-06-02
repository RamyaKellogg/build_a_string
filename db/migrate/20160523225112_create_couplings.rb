class CreateCouplings < ActiveRecord::Migration
  def change
    create_table :couplings do |t|
      t.text :category
      t.integer :pressure_rating
      t.integer :size
      t.text :description

      t.timestamps

    end
  end
end
