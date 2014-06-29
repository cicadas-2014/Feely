class Story < ActiveRecord::Base
  validates :anecdote, presence: true, length: { maximum: 200, too_long: "200 characters is the maximum allowed" }
  before_create :format_anecdote

  belongs_to :color

  private

  def format_anecdote
    self.anecdote.downcase!
  end
end
