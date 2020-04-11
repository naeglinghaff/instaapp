require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    post = Post.new(image: "url.com", active: true, user_id: 1)
    subject.image = String
    subject.user_id = 1
    expect(subject).to be_valid
  end

end
