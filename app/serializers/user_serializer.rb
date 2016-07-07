class UserSerializer < ActiveModel::Serializer
  attributes :email,
             :name,
             :username,
             :cell_number,
             :address,
             :zip_code,
             :avatar_url

  has_many :pets

  def avatar_url
    ActionController::Base.helpers.attachment_url(self, :profile_image, :fill, 150, 150, format: "jpg")
  end
end
