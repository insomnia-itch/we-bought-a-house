json.extract! contract, :id, :contractor_id, :project_id, :time_estimate, :price_estimate, :running_cost, :accepted, :created_at, :updated_at
json.url contract_url(contract, format: :json)
