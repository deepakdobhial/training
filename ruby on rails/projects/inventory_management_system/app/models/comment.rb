class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  
  after_touch do |comment|
    puts "update the updated_at field"
  end

end
