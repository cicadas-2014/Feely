# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

colors = ['orange', 'blue', 'yellow', 'purple', 'red', 'green', 'pink', 'black', 'white']
color_hexes = ['#E36B23', '#4584BE', '#E6C92E', '#9E65E8', '#FF4A38', '#5DA028', '#FF65C6', '#303030', '#FDF5E6']

anecdotes_positive = ["understanding", "great", "playful", "calm", "confident", "gay", "courageous", "peaceful", "reliable", "joyous", "energetic", "at ease", "easy", "lucky", "liberated", "comfortable", "amazed", "fortunate", "optimistic", "pleased", "free", "delighted", "provocative", "encouraged", "sympathetic", "overjoyed", "impulsive", "clever", "interested", "gleeful", "free", "surprised", "satisfied", "thankful", "frisky", "content", "receptive", "important", "animated", "quiet", "accepting", "festive", "spirited", "certain", "kind", "ecstatic", "thrilled", "relaxed"]
anecdotes_negative = ["irritated", "lousy", "upset", "incapable", "enraged", "disappointed", "doubtful", "alone", "hostile", "discouraged", "uncertain", "paralyzed", "insulting", "ashamed", "indecisive", "fatigued", "sore", "powerless", "perplexed", "useless", "annoyed", "diminished", "embarrassed", "inferior", "upset", "guilty", "hesitant", "vulnerable", "hateful", "dissatisfied", "shy", "empty", "unpleasant", "miserable", "stupefied", "forced", "offensive", "detestable", "disillusioned", "hesitant", "bitter", "repugnant", "unbelieving", "despair", "aggressive", "despicable"]

anecdotes = [anecdotes_positive, anecdotes_negative]

9.times { |x| Color.create(name: colors[x], hex_code: color_hexes[x]) }

50.times do
  Story.create(anecdote: anecdotes[(rand(0..1)].sample, color_id: rand(1..9))
end

