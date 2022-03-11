class Relationship < ApplicationRecord
  # フォローするユーザー
  belongs_to :following, class_name: 'Member'
  # フォローされるユーザー
  belongs_to :follower, class_name: 'Member'
end
