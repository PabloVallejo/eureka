#
# Factory Girl factories.
#
FactoryGirl.define do  factory :semaphore_semaphore_completed, :class => 'Semaphore::SemaphoreCompleted' do
    
  end
  factory :indicator_indicator_completed, :class => 'Indicator::IndicatorCompleted' do
    
  end
  factory :semaphore_semaphore_percentage, :class => 'Semaphore::SemaphorePercentage' do
    
  end
  factory :task do
    title "MyString"
description "MyText"
indicator_id 1
parent_id 1
semaphore_id 1
category_id 1
asigned_to_id 1
  end
  factory :category_category_social_projection, :class => 'Category::CategorySocialProjection' do
    
  end
  factory :category_category_teaching, :class => 'Category::CategoryTeaching' do
    
  end
  factory :category_category_research, :class => 'Category::CategoryResearch' do
    
  end
  factory :indicator_indicator_percentage, :class => 'Indicator::IndicatorPercentage' do
    
  end


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
