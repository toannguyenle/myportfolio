# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   Mayor.create(name: 'Emanuel', city: cities.first)
apps = App.create([
  { name: 'myBeautyCase', app_url: 'https://mybeautycase.herokuapp.com/' },
  { name: 'SocialTicTacToe', app_url: 'https://tttcg.firebaseapp.com/' },
  { name: 'feedme', app_url: 'https://feedmeapp.herokuapp.com/' }
   ])