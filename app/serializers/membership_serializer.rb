class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user, :group
  has_one :user
  has_one :group
end
