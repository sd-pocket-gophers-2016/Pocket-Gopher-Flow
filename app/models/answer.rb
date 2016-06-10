class Answer < ActiveRecord::Base
  validates :content, :user_id, :post_id, presence: true
  has_many :comments, as: :commentable
end
