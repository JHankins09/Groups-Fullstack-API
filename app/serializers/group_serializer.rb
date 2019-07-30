# frozen_string_literal: true

class GroupSerializer < ActiveModel::Serializer
  attributes :id, :Name, :Type, :Intro, :users, :editable

  def editable
    scope == object.users
  end
end
