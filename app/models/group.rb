class Group < ApplicationRecord
  belongs_to :user
  validates :name, :type, :user, presence: true

  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  # has_many :users
end
