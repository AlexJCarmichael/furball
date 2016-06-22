class UserSerializer < ActiveModel::Serializer
  attributes :email, :name, :username, :profile_image, :cell_number, :address, :zip_code
end
