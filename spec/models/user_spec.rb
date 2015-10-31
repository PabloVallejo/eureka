require 'rails_helper'

RSpec.describe User, type: :model do

  it "Should get `full_name`" do
    user = FactoryGirl.build(:user)
    expect(user.full_name).to eq "#{user.first_name} #{user.last_name}"
  end

end
