json.extract! athlete, :id, :name, :description, :birthdate, :number, :healthy, :created_at, :updated_at
json.url athlete_url(athlete, format: :json)
