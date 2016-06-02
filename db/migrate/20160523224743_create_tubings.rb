class CreateTubings < ActiveRecord::Migration
  def change
    create_table :tubings do |t|
      t.integer :coupling_id
      t.integer :packer_id
      t.integer :safety_valve_id
      t.string :name
      t.integer :user_id

      t.timestamps

    end
  end
end
