class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :follewed, class_name: "User"
end
