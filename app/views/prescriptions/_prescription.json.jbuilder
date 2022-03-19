json.extract! prescription, :id, :total_cost, :doctor_id, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
