# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Event.create!({
  name: 'One hundred days',
  start_at: Time.now - 50.days,
  end_at: Time.now + 50.days,
  description: 'A long event'
})
Event.create!({
  name: 'One week',
  start_at: Time.now - 3.days,
  end_at: Time.now + 4.days,
  description: 'A week event'
})
Event.create!({
  name: 'One day',
  start_at: Time.now - 3.hours,
  end_at: Time.now,
  description: 'A day event'
})
