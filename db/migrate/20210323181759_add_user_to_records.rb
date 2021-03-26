class AddUserToRecords < ActiveRecord::Migration[6.0]
  def change
    add_reference(:records, :user, foreign_key: true, nil: false )
  end
end
