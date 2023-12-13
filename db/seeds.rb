puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
daikoku = { name: 'Daikoku', address: 'Coyoacan', category: 'japanese', phone_number: '5512435687' }
nagaoka = { name: 'Nagaoka', address: 'Napoles', category: 'japanese', phone_number: '5512915687' }
manzo = { name: 'Manzo', address: 'Roma Norte', category: 'french', phone_number: '5512562794' }
paramo = { name: 'Paramo', address: 'Condesa', category: 'italian', phone_number: '5509039310' }
panda = { name: 'Panda', address: 'Del Valle', category: 'chinese', phone_number: '5512345678' }

[daikoku, nagaoka, manzo, paramo, panda].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts 'Created #{restaurant.name}'
end
puts 'Finished!'
