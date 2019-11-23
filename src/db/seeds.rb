# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.create!(email: 'admin@example.com', password: '123456', password_confirmation: '123456', admin: true, attendee: false, volunteer: false)
User.create!(email: 'attendee1@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: true, volunteer: false)
User.create!(email: 'attendee2@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: true, volunteer: false)
User.create!(email: 'attendee3@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: true, volunteer: false)
User.create!(email: 'attendee4@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: true, volunteer: false)
User.create!(email: 'attendee5@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: true, volunteer: false)
User.create!(email: 'volunteer1@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: false, volunteer: true)
User.create!(email: 'volunteer2@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: false, volunteer: true)
User.create!(email: 'volunteer3@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: false, volunteer: true)
User.create!(email: 'volunteer4@example.com', password: '123456', password_confirmation: '123456', admin: false, attendee: false, volunteer: true)

Event.create!(title: 'Event #1', description: 'This is event #1', location: 'Ewing', date: '11/19/19', start_time: '12:30:00', end_time: '14:30:00')
Event.create!(title: 'Event #2', description: 'This is event #2', location: 'Ewing', date: '11/20/19', start_time: '12:30:00', end_time: '14:30:00')
Event.create!(title: 'Event #3', description: 'This is event #3', location: 'Ewing', date: '11/21/19', start_time: '12:30:00', end_time: '14:30:00')




