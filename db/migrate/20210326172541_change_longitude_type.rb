class ChangeLongitudeType < ActiveRecord::Migration[6.0]
  def change
    change_column :loss_places, :longitude, :float
  end
end
