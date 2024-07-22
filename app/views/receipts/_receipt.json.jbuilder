json.extract! receipt, :id, :project_id, :price, :contractor_id, :type_of_cost, :created_at, :updated_at
json.url receipt_url(receipt, format: :json)
