class Post < ActiveRecord::Base
  # Remember to create a migration!
  validates :title, :content, presence: true
  belongs_to :user

  #votes for later
    # has_many :votes
    # def points
      #votes.sum(:value)
    #end

  # time since creation
   def time_since_creation
     ((Time.now - created_at) / 3600).round
   end
end
