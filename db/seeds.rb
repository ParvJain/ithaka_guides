# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.connection.transaction do
    activity_data = CSV.read('db/seed_files/activities.csv')
    Activity.create(activity_data.flatten.map { |a| { name: a } })

    activity_map = {}
    Activity.all.each { |a| activity_map[a.name] = a }

    place_data = CSV.read('db/seed_files/places.csv')
    place_map = {}
    place_data.each do |row|
        #name, place_type, description, price, currency, source, distance, parent
        place = Place.new(name: row[0], place_type: row[1])
        place.description = row[2] if row[2]
        place.price = row[3] if row[3]
        place.currency = row[4] if row[4]
        if row[5] && row[6]
            source = place_map[row[5]]
            if source
                place.source = source
                place.distance = row[6]
            end
        end
        if row[7]
            parent = place_map[row[7]]
            place.parent = parent if parent
        end
        place.save
        place_map[place.name] = place
    end

    place_activity_data = CSV.read('db/seed_files/placeactivities.csv')
    place_activity_data.each do |row|
        #place, activity
        place = place_map[row[0]]
        activity = activity_map[row[1]]
        PlaceActivity.create(place: place, activity: activity) if place && activity
    end
end