class UserSerializer < ActiveModel::Serializer
  atttributes :address, :username, :cell_number, :zip_code, :email
end
