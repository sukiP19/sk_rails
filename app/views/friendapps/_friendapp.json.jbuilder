json.extract! friendapp, :id, :first_name, :last_name, :email, :phone, :twitter, :created_at, :updated_at
json.url friendapp_url(friendapp, format: :json)
