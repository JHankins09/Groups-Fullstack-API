# frozen_string_literal: true

class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :memberships, :groups

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
