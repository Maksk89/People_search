class AddRecordToLossPlaces < ActiveRecord::Migration[6.0]
  def change
    add_reference :loss_places, :record, null: false, foreign_key: true
  end
end
