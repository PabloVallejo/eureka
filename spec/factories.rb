#
# Factory Girl factories.
#

FactoryGirl.define do  factory :item do
    
  end


    # User
    factory :user do
        email "sample@email.de"
        password "deemo"
        first_name "first"
        last_name "last"
    end

end
