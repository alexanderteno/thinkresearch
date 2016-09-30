class CreateEncounters < ActiveRecord::Migration[5.0]
  def change
    create_table :encounters do |t|
      t.string :visit_number
      t.timestamp :admitted_at
      t.timestamp :discharged_at
      t.string :location
      t.integer :room
      t.integer :bed
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
