json.extract! institution, :id, :name, :description, :character, :address, :phones, :website, :email, :created_at, :updated_at
json.url institution_url(institution, format: :json)
