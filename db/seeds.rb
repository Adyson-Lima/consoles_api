puts 'gerando consoles...'
5.times do
  Console.create(name: ['ps3', 'ps4', 'ps5'].sample, manufacturer: 'sony')
end
puts 'consoles gerados com sucesso'