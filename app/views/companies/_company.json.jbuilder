json.extract! company, :id, :company_name, :agent_name, :phone_number, :created_at, :updated_at
json.url company_url(company, format: :json)
