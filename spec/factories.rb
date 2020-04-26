FactoryBot.define do
  factory :user do
    id { 1 }
    email { "fakeemail@email.com"}
    username { "countCatula" }
    password { "hellothere" }
  end

  factory :post do
    id { 1 }
    active { true }
    user_id { 1 }
    image {"www.picture.com"}
    total_likes { 0 }
  end

  factory :like do
    id { 1 }
    user_id { 1 }
    post_id { 1 }
  end
end
