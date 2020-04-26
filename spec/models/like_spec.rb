require 'rails_helper'
require_relative '../support/devise'

RSpec.describe Like, type: :model do

  subject { described_class.new }

  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
    it { should belong_to(:post).class_name('Post') }
  end

  describe 'validations' do
     it { should validate_uniqueness_of(:post_id).scoped_to(:user_id) }
  end

  describe 'after_create' do
    it 'can change a posts total likes' do
      expect { Like.new(user_id: 1, post_id: 1) }.to change { @post.total_likes }
    end
  end
end
