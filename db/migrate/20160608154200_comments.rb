class Comments < ActiveRecord::Migration

  def change
    belongs_to :commentable, polymorphic: true
  end
end
