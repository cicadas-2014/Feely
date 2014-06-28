FactoryGirl.define do
  factory :color do
    name { Faker::Commerce.color }
    hex_code { "%06x" % (rand * 0xffffff) }
  end

  factory :story do
    anecdote { Faker::Lorem.sentence }
    color_id { 1 }
  end
end
