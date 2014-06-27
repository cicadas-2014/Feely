FactoryGirl.define do
  factory :color do
    name { Faker::Lorem.word }
    hex_code { "%06x" % (rand * 0xffffff) }
  end

  factory :story do
    anecdote { Faker::Lorem.sentence }
    color
  end
end
