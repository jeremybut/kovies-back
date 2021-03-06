# frozen_string_literal: true
# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  settings               :jsonb            not null
#

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :kodi_username, :kodi_password, :kodi_host,
             :kodi_port, :created_at

  link(:self) { api_v1_user_url(object) }
end
