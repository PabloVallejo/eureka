#
# Factory Girl factories.
#

FactoryGirl.define do

    # User
    factory :user do
        email "sample@email.de"
        password "deemo"
        first_name "first"
        last_name "last"
    end

end
