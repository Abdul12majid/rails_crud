json.extract! crud_model, :id, :first_name, :last_name, :email, :phone, :created_at, :updated_at
json.url crud_model_url(crud_model, format: :json)
