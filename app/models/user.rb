class User < ApplicationRecord
  extend Refile::Attachment

  attachment :profile_image

  has_secure_password

  has_many :pets
end
