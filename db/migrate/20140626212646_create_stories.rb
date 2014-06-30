class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :anecdote
      t.belongs_to :color

      t.timestamps
    end
  end
end
