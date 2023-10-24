json.extract! user, :id, :name, :old, :telephone, :gender, :birthdays, :created_at, :updated_at
json.url user_url(user, format: :json)
