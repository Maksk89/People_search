json.extract! record, :id, :name, :description, :birthdate, :loss_date, :created_at, :updated_at
json.url record_url(record, format: :json)
