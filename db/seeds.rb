# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Create User
User.create(email: 'admin@example.ru', password: '12345678', role: 'admin')

roles_array = %w(admin programmer director manager)
# Create Buttons
25.times do |num|
  Button.create(roles: [roles_array.sample], link: "link_#{num}")
end
