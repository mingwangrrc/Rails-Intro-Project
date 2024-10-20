# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'csv'

filename = Rails.root.join('db', 'seeds', 'city_temperature.csv')
# filename = Rails.root.join('db', 'seeds', 'city_temperature_origin.csv')
puts filename
# csv = CSV.parse(csv_text, :headers => true)

# csv.each do |row|
  # puts row['City']
  # destination = Destination.new
  # destination.name = row['name']
  # destination.description = row['description']
  # destination.save
# end


CSV.foreach(filename, headers: true) do |row|
  # puts row["Region"], row["Country"], row["state"], row["City"], row["Year"], row["AvgTemperature"]
  regin = Regin.find_or_create_by(name: row["Region"])
  country = Country.find_or_create_by(name: row["Country"], regin: regin)
  state_name = row["State"] ? row["State"] : "N/A"
  state = State.find_or_create_by(name: state_name, country: country)
  city = City.find_or_create_by(name: row["City"], state: state)
end


# ,Month,Day,Year,
      # Course.create!(
        # title: row["Title"],
        # description: row["Description"],
        # status: row["Status"]
      # )
    # end
