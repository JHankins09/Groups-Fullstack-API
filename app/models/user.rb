# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
  belongs_to :groups, optional: true
end
