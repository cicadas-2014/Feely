
FactoryGirl.define do
  factory :color do
    name { Faker::Lorem.word }
    hex_code { "%06x" % (rand * 0xffffff) }
  end

  factory :story do
    anecdote { Faker::Lorem.sentence }
    color
  end

  factory :purple do
    name { 'purple' }
    hex_code { '#551A8B' }
  end

  factory :blue do
    name { 'blue' }
    hex_code { '#38B0DE' }
  end
end
