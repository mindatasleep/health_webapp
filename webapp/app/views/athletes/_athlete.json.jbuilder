json.extract! athlete, :id, :name, :description, :age, :birthdate, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
