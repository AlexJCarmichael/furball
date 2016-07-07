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
    Refile.attachment_url(object, :profile_image, :fill, 150, 150, format: "jpg")
  end
end
