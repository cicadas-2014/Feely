# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

colors = ['orange', 'blue', 'yellow', 'purple', 'red', 'green', 'pink', 'black', 'white']
color_hexes = ['#FF530D', '#1B29FF', '#FFD01B', '#530EB2', '#FF0000', '#28B20E', '#FF1BC1', '#000000', '#FFFFFF']

9.times { |x| Color.create(name: colors[x], hex_code: color_hexes[x]) }
