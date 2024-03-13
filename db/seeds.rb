# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
users_data = [
  { email: 'user1@example.com', password: 'password1', password_confirmation: 'password1', name: 'user1' },
  { email: 'user2@example.com', password: 'password2', password_confirmation: 'password2', name: 'user2' },
  # Добавьте сколько угодно пользователей...
]

users_data.each do |user_data|
  User.create(user_data)
end

puts 'Seed data created successfully'
