require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe PostsHelper, type: :helper do

  before(:each) do
    user = FactoryBot.create(:user)
    allow(view).to receive(:current_user).and_return(user)
  end

  it 'returns true if user has liked post' do
    expect(liked_by_user?(1)).to_eq(false)
  end

end
