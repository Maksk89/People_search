class CreateLossPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :loss_places do |t|
      t.decimal :latitude, precision: 15, scale: 10
      t.decimal :longitude, precision: 15, scale: 10

      t.timestamps
    end
  end
end
