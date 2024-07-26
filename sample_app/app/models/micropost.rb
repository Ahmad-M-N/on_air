class Micropost < ApplicationRecord
  
  # Associations
  belongs_to :user

  # Validations
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}

  # Scope
  default_scope -> {order(created_at: :desc)}
end
