#
# Factory Girl factories.
#
FactoryGirl.define do

  # Email sequence
  sequence :email do |n|
    "person#{n}@example.com"
  end

  factory :item do
    title "Sample title"
    description "Sample description"
    status "encontrado"
    created_by factory: :user
  end

  # User
  factory :user do
    email
    password Faker::Internet.password
    first_name 'John'
    last_name 'Doe'
  end

end
