# require 'faker'

# # Create 10 users
# puts "📃 Seeding data..."
# 10.times do
#   User.create!(
#     username: Faker::Alphanumeric.alpha(number: 8),
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(min_length: 8),
#   )
# end

# # Create 20 todos for each user
# User.all.each do |user|
#   10.times do
#     Todo.create!(
#         title: Faker::Lorem.words(number: 2).join(' '),
#         description: Faker::Lorem.sentence(word_count: 20),
#         status: ['CREATED', 'STARTED', 'COMPLETED', 'CANCELLED'].sample,
#         priority: ['LOW', 'MEDIUM', 'HIGH' ].sample,
#         user: User.order(Arel.sql('RANDOM()')).first
#     )
#   end
# end

# puts "✅ Done seeding"
