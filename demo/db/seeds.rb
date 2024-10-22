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
require 'faker'

filename = Rails.root.join('db', 'seeds', 'city_temperature.csv')
puts filename

# Mock 100 users
100.times {
  username = Faker::Name.unique.name
  email = Faker::Internet.email(name: username, domain: 'gmail.com', separators: ['_'])
  User.create!(username: username, email:email)
}


i = 1
CSV.foreach(filename, headers: true) do |row|
  puts i.to_s + "..."
  i += 1
  city = City.find_or_create_by!(city: row["City"], state: row["State"], country: row["Country"], Region: row["Region"])

  year, month, day = row["Year"].to_i, row["Month"].to_i, row["Day"].to_i
  date = Date.new(year, month, day)

  temperature = Temperature.find_or_create_by!(avg_temp: row["AvgTemperature"], city:city, date:date)

  # choose 2 user and do the comment
  2.times {
    user = User.order("RANDOM()").take
    comment = Comment.create!(comment: Faker::Emotion.adjective, user:user, date:date)
    temperature.users << user
    temperature.comments << comment
  }
end


# ,Month,Day,Year,
      # Course.create!(
        # title: row["Title"],
        # description: row["Description"],
        # status: row["Status"]
      # )
    # end
