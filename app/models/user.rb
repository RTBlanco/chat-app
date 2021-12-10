class User < ApplicationRecord
  validates :username, uniqueness: true
  scope :all_except, ->(user) {where.not(id: user)}
end
