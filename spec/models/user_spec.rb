require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with first name, last name and email' do
    user = create(:user)
    expect(user).to be_valid
  end

  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to have_one(:business) }

end
