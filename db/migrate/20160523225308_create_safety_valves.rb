class CreateSafetyValves < ActiveRecord::Migration
  def change
    create_table :safety_valves do |t|
      t.integer :size
      t.text :category
      t.integer :pressure_rating
      t.text :description

      t.timestamps

    end
  end
end
