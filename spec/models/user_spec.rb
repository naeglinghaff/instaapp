require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to be }
  it "is valid with valid attributes" do
    user = User.new(email: "fake@email.com", password: "fakepassword")
    expect(user).to be_valid
  end
  it "is not valid without a username" do
    user = User.new(email: "fake@email.com", password: "fakepassword", username: "haffman")
    expect(user).to be_valid
  end
end
