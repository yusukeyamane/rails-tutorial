class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  scope :including_replies, ->(user_name) { where("user_name IS ?", user_name) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
