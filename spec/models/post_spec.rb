require 'rails_helper'

RSpec.describe Post, type: :model do

  subject { described_class.new }

  describe 'associations' do
    it { should belong_to(:user).class_name('User') }
  end

  describe 'before action' do
    it 'can change to default active status' do
      expect{ Post.new }.to change{ Post.active }
    end
  end
end
