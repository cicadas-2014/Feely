class Story < ActiveRecord::Base
  validates :anecdote, presence: true, uniqueness: true
  belongs_to :color
end
