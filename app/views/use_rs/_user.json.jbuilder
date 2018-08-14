json.extract! user, :id, :ID, :NAMES, :SURNAMES, :EMAIL, :PASSWORD, :created_at, :updated_at
json.url user_url(user, format: :json)
