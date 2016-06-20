class UserSerializer < ActiveModel::Serializer
  attributes :address, :username, :cell_number, :zip_code, :email
end
