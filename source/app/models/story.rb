class Story < ActiveRecord::Base
  validates :anecdote, presence: true, length: { maximum: 200, too_long: "200 characters is the maximum allowed" }

  belongs_to :color
end
