# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create ([
  {
    fname: 'Stef',
    lname: 'Hoo',
    gender: 'female',
    smoking: 'false',
    email: 'stef@yahoo',
    password: 'stef1',
    rider_id: 1
  },

  {
    fname: 'Jimmy',
    lname: 'Holland',
    gender: 'male',
    smoking: 'true',
    email: 'new@aol',
    password: 'Jimmy1',
    rider_id: 2
  },

  {
    fname: 'David',
    lname: 'Song',
    gender: 'male',
    smoking: 'true',
    email: 'david@aol',
    password: 'david1',
    rider_id: 3
  },

  {
    fname: 'Joe',
    lname: 'October',
    gender: 'female',
    smoking: 'false',
    email: 'joe@gmail',
    password: 'joe1',
    rider_id: 4
  }
])

Trip.create([
  {
    origin: 'Mexico',
    destination: 'Panama',
    month: 'February',
    date: '9',
    time: '10 am',
    creator_id: 1
  },
  {
    origin: 'New York',
    destination: 'Chicago',
    month: 'April',
    date: '2',
    time: '11 am',
    creator_id: 2
  }
])

UserTrip.create([
  {
    rider_id: 1,
    trip_id: 2
  },

  {
    rider_id: 2,
    trip_id: 1
  }



])
