# rubocop:disable all
require_relative '../config/database'

# Dados fictícios para inserir
users_data = [
  { name: 'Alice', username: 'alice123', password: 'alicepass' },
  { name: 'Bob', username: 'bob456', password: 'bobpass' },
  { name: 'Charlie', username: 'charlie789', password: 'charliepass' },
  { name: 'David', username: 'david101', password: 'davidpass' },
  { name: 'Eve', username: 'eve202', password: 'evepass' },
  { name: 'Frank', username: 'frank303', password: 'frankpass' },
  { name: 'Grace', username: 'grace404', password: 'gracepass' },
  { name: 'Hank', username: 'hank505', password: 'hankpass' },
  { name: 'Ivy', username: 'ivy606', password: 'ivypass' },
  { name: 'Jack', username: 'jack707', password: 'jackpass' }
]

# Inserir os dados no banco de dados
users_data.each do |user|
  DB.execute(
    'INSERT INTO users (name, username, password) VALUES (?, ?, ?)',
    [user[:name], user[:username], user[:password]]
  )
end

puts "10 usuários inseridos com sucesso!"