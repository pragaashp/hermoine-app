# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test_request = Request.create(professor: 'naathaan', building: 'VLSB', room: '2040', request_class: 'Classics 10B', days:'10101', start_time: Time.current, end_time: Time.current)
test_request.save