require 'rails_helper'



RSpec.describe User, type: :model do

  subject { described_class.new }

    it "is valid with valid attributes" do
      subject.email = "new@email.com"
      subject.password = "anything"
      subject.created_at = DateTime.now
      subject.updated_at = DateTime.now
      subject.username = "countcatula"
      expect(subject).to be_valid
    end

  it "is not valid without a username" do
    user = User.new(email: "fake@email.com", password: "fakepassword")
    expect(user).to_not be_valid
  end
end
