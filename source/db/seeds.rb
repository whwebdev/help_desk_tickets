require 'faker'

customer_num = 200
staff_num = 5

customer_num.times do
  Customer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password"
  )
end

# create one admin
StaffMember.create!(
  first_name: "Big",
  last_name: "Bossman",
  email: Faker::Internet.email,
  password: "password",
  password_confirmation: "password",
  is_admin: true
)

staff_num.times do
  StaffMember.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    is_admin: false
  )
end

# add in the Bossman
staff_num += 1

100.times do
  Ticket.create!(
    customer_id: (1..customer_num).to_a.sample,
    staff_member_id: (1..staff_num).to_a.sample,
    subject: Faker::Lorem.word,
    category: Faker::Lorem.word
  )
end

500.times do
  ticket_ids = Ticket.all.map(&:id)
  Message.create!(
    ticket_id: ticket_ids.sample,
    message_text: Faker::Lorem.paragraph
  )
end
