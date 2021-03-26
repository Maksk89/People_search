class ChangeLatitudeType < ActiveRecord::Migration[6.0]
  def change
    change_column :loss_places, :latitude, :float
  end
end
